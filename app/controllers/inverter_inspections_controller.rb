class InverterInspectionsController < ApplicationController
  def show
    @inverter_inspection = InverterInspection.find(params[:id])
  end

  def new
    @inverter_inspection = InverterInspection.new
    infobox = @inverter_inspection.infoboxes.build
    # infobox.inspection_images.build
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
    params.require(:inverter_inspection).permit(:pv_commission_id, infoboxes_attributes: [:id, :title, :description, :_destroy, inspection_images_attributes: [:id, :pic, :_destroy]])
  end
end
