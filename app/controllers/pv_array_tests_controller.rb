class PvArrayTestsController < ApplicationController
  def index

  end

  def show
    @pv_array_test = PvArrayTest.find(params[:id])
  end

  def new
    @pv_array_test = PvArrayTest.new()
  end

  def create
    pv_array_test = PvArrayTest.new(pv_array_test_params)

    if pv_array_test.save
      redirect_to pv_array_test, flash: {success: "PV Array Test was created."}
    else
      render :new
    end
  end

  def edit
    @pv_array_test = PvArrayTest.find(params[:id])
  end

  def update
    pv_array_test = PvArrayTest.find(params[:id])
    # pv_commission_id = pv_array_test.pv_commission_id

    pv_array_test.update pv_array_test_params

    # pv_array_test.pv_commission_id = pv_commission_id

    if pv_array_test.save
      redirect_to pv_array_test, flash: {success: "PV Array Test was updated."}
    else
      render :edit
    end

  end

  private

  def pv_array_test_params
    params.require(:pv_array_test).permit(:pv_commission_id, :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic)
  end

end
