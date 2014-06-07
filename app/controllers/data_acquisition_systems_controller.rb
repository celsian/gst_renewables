class DataAcquisitionSystemsController < ApplicationController
 before_action :authenticate_user!
  before_action :require_viewer, only: [ :show ]
  before_action :require_editor, except: [ :show ]

  def show
    @data_acquisition_system = DataAcquisitionSystem.find(params[:id])
    @project = @data_acquisition_system.pv_commission.project
  end

  def new
    @data_acquisition_system = DataAcquisitionSystem.new
    infobox = @data_acquisition_system.infoboxes.build
  end

  def edit
    @data_acquisition_system = DataAcquisitionSystem.find(params[:id])
  end

  def create
    @data_acquisition_system = DataAcquisitionSystem.new(das_params)

    if @data_acquisition_system.save
      redirect_to @data_acquisition_system, flash: {success: "Data Acquisition System was created."}
    else
      flash[:error] = "Error: There was a problem creating the Data Acquisition System."
      render :new
    end
  end

  def update
    @data_acquisition_system = DataAcquisitionSystem.find(params[:id])
    @data_acquisition_system.attributes = das_params
    
    if @data_acquisition_system.save
      redirect_to @data_acquisition_system, flash: {success: "Data Acquisition System was updated."}
    else
      flash[:error] = "Error: There was a problem updating the Data Acquisition System."
      render :new
    end
  end

  def destroy
    data_acquisition_system = DataAcquisitionSystem.find(params[:id])
    pv_commission = data_acquisition_system.pv_commission
    data_acquisition_system.destroy
    redirect_to pv_commission, flash: {success: "Data Acquisition System was deleted."}
  end

  private

  def das_params
    params.require(:data_acquisition_system).permit(:name, :pv_commission_id, infoboxes_attributes: [:id, :title, :description, :_destroy, inspection_images_attributes: [:id, :pic, :_destroy]])
  end

  def require_editor
    unless current_user.editor == true || current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_viewer
    project = DataAcquisitionSystem.find(params[:id]).pv_commission.project
    unless project.users.exists?(current_user) || current_user.admin || current_user.editor
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

end
