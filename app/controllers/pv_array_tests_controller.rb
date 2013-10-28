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

    if pv_array_test.pv_commission.pv_array_tests = []
      pv_array_test.test_number = "001"
    else
      pv_array_test.test_number = (pv_array_test.pv_commission.pv_array_tests.last.test_number.to_i+1).to_s.rjust(3, '0')
    end

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

    pv_array_test.update pv_array_test_params

    if pv_array_test.save
      redirect_to pv_array_test, flash: {success: "PV Array Test was updated."}
    else
      render :edit
    end
  end

  def destroy
    pv_array_test = PvArrayTest.find(params[:id])
    test_number = pv_array_test.test_number
    pv_commission = pv_array_test.pv_commission
    pv_array_test.destroy
    redirect_to pv_commission, flash: {success: "PV Array Test ##{test_number} was deleted."}
  end

  private

  def pv_array_test_params
    params.require(:pv_array_test).permit(:pv_commission_id, :initial_verification, :inspector, :test_instruments, :combiner, :mfg, :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic)
  end

end
