class PvCommissionsController < ApplicationController
  def index

  end

  def show
    @pv_commission = PvCommission.find(params[:id])
  end

  def new
    @pv_commission = PvCommission.new
  end

  def create
    pv_commission = PvCommission.new(pv_commission_params)
    # pv_commission.project = params[:project_id]

    if pv_commission.save
      redirect_to pv_commission, flash: {success: "PV Commissioning was created."}
    else
      render :new
    end
  end

  private

  def pv_commission_params
    params.require(:pv_commission).permit(:reference_number, :owner, :dc_system_size, :module_make_model, :module_quanitity,
      :combiner_make_model, :recombiner_make_model, :inverter_make_model, :inverter_serial_number, :das_system_manufacturer,
      :project_id)
  end

end
