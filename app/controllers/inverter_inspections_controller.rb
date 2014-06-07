class InverterInspectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_viewer, only: [ :show ]
  before_action :require_editor, except: [ :show ]

  def show
    @inverter_inspection = InverterInspection.find(params[:id])
    @project = @inverter_inspection.pv_commission.project
  end

  def new
    @inverter_inspection = InverterInspection.new
    infobox = @inverter_inspection.infoboxes.build
  end

  def edit
    @inverter_inspection = InverterInspection.find(params[:id])
  end

  def create
    # binding.pry
    @inverter_inspection = InverterInspection.new(inverter_inspection_params)

    if @inverter_inspection.save
      redirect_to @inverter_inspection, flash: {success: "Inverter Inspection was creating."}
    else
      flash[:error] = "Error: There was a problem creating the Inverter Inspection."
      render :new
    end
  end

  def update
    @inverter_inspection = InverterInspection.find(params[:id])
    @inverter_inspection.attributes = inverter_inspection_params
    
    if @inverter_inspection.save
      redirect_to @inverter_inspection, flash: {success: "Inverter Inspection was updated."}
    else
      flash[:error] = "Error: There was a problem updating the Inverter Inspection."
      render :new
    end
  end

  def destroy
    inverter_inspection = InverterInspection.find(params[:id])
    pv_commission = inverter_inspection.pv_commission
    inverter_inspection.destroy
    redirect_to pv_commission, flash: {success: "Inverter Inspection was deleted."}
  end

  private

  def inverter_inspection_params
    params.require(:inverter_inspection).permit(:name, :pv_commission_id, infoboxes_attributes: [:id, :title, :description, :_destroy, inspection_images_attributes: [:id, :pic, :_destroy]])
  end

  def require_editor
    unless current_user.editor == true || current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_viewer
    project = InverterInspection.find(params[:id]).pv_commission.project
    unless project.users.exists?(current_user) || current_user.admin || current_user.editor
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

end
