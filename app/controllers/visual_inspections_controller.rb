class VisualInspectionsController < ApplicationController
  def show
    @visual_inspection = VisualInspection.find(params[:id])
  end

  def new
    @visual_inspection = VisualInspection.new
    infobox = @visual_inspection.infoboxes.build
  end

  def edit
    @visual_inspection = VisualInspection.find(params[:id])
  end

  def create
    @visual_inspection = VisualInspection.new(visual_inspection_params)

    if @visual_inspection.save
      redirect_to @visual_inspection, flash: {success: "Visual Inspection was created."}
    else
      flash[:error] = "Error: There was a problem creating the Visual Inspection."
      render :new
    end
  end

  def update
    @visual_inspection = VisualInspection.find(params[:id])
    @visual_inspection.attributes = visual_inspection_params
    
    if @visual_inspection.save
      redirect_to @visual_inspection, flash: {success: "Visual Inspection was updated."}
    else
      flash[:error] = "Error: There was a problem updating the Visual Inspection."
      render :new
    end
  end

  def destroy
    visual_inspection = VisualInspection.find(params[:id])
    pv_commission = visual_inspection.pv_commission
    visual_inspection.destroy
    redirect_to pv_commission, flash: {success: "Visual Inspection was deleted."}
  end

  private

  def visual_inspection_params
    params.require(:visual_inspection).permit(:pv_commission_id, infoboxes_attributes: [:id, :title, :description, :_destroy, inspection_images_attributes: [:id, :pic, :_destroy]])
  end
end
