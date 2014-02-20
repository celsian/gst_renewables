class PvCommissionsController < ApplicationController
  def index

  end

  def show
    @pv_commission = PvCommission.find(params[:id])
    @rows = @pv_commission.row_count
  end

  def new
    @pv_commission = PvCommission.new
  end

  def create
    pv_commission = PvCommission.new(pv_commission_params)

    if pv_commission.save
      redirect_to pv_commission, flash: {success: "PV Commissioning was created."}
    else
      render :new
    end
  end

  def edit
    @pv_commission = PvCommission.find(params[:id])
  end

  def update
    pv_commission = PvCommission.find(params[:id])

    pv_commission.attributes = pv_commission_params

    if pv_commission.save
      redirect_to pv_commission, flash: {success: "PV Commission was updated."}
    else
      render :edit
    end
  end

  def destroy
    pv_commission = PvCommission.find(params[:id])
    reference_number = pv_commission.reference_number
    project = pv_commission.project
    pv_commission.destroy
    redirect_to project, flash: {success: "PV Commission ##{reference_number} was deleted."}
  end

  private

  def pv_commission_params
    params.require(:pv_commission).permit(:reference_number, :owner, :dc_system_size, :ac_system_size, :module_make_model, :module_quantity,
      :combiner_make_model, :recombiner_make_model, :inverter_make_model, :inverter_serial_number, :das_system_manufacturer,
      :project_id)
  end

end
