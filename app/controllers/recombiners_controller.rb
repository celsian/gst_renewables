class RecombinersController < ApplicationController
  before_action :authenticate_user!
  before_action :require_viewer, only: [ :show ]
  before_action :require_editor, except: [ :show, :destroy ]
  before_action :require_admin, only: [ :destroy ]

  def index

  end

  def show
    @recombiner = Recombiner.find(params[:id])
  end

  def new
    @recombiner = Recombiner.new
  end

  def create
    recombiner = Recombiner.new(recombiner_params)

    if recombiner.save
      redirect_to recombiner, flash: {success: "Recombiner was created."}
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
    recombiner = Recombiner.find(params[:id])
    name = recombiner.name
    pv_commission = recombiner.pv_commission
    recombiner.destroy
    redirect_to pv_commission, flash: {success: "Recombiner \"#{name}\" was deleted."}
  end

  private

  def recombiner_params
    params.require(:recombiner).permit(:name, :inspector, :verification, :test_instrument, :recombiner_model,
      :mfg, :recombiner_exterior_pic, :recombiner_interior_pic, :recombiner_flir_pic, :pv_commission_id)
  end

  def require_admin
    unless current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_editor
    unless current_user.editor == true || current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_viewer
    project = Recombiner.find(params[:id]).pv_commission.project
    unless project.reference_number == current_user.reference_number || current_user.admin || current_user.editor
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

end
