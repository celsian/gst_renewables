class PvArrayTestsController < ApplicationController
  def index

  end

  def show
    @pv_array_test = PvArrayTest.find(params[:id])
    @string_tests = @pv_array_test.string_tests
    @tables = ((@string_tests.length/10.0).ceil)-1
  end

  def new
    @pv_array_test = PvArrayTest.new
    @pv_array_test.string_tests.build
  end

  def create
    pv_array_test = PvArrayTest.new(pv_array_test_params)

    if pv_array_test.pv_commission.pv_array_tests == []
      pv_array_test.test_number = "001"
    else
      pv_array_test.test_number = (pv_array_test.pv_commission.pv_array_tests.last.test_number.to_i+1).to_s.rjust(3, '0')
    end

    if pv_array_test.save
      StringTest.import(params["pv_array_test"]["string_tests_attributes"]["0"]["pv_array_test"], pv_array_test) #this passes the single CSV that the user selected which will always be in position 0 because there is only one string_tests.build in the pv_array_test controller

      redirect_to pv_array_test, flash: {success: "PV Array Test was created."}
    else
      render :new
    end
  end

  def edit
    @pv_array_test = PvArrayTest.find(params[:id])

    @string_tests = @pv_array_test.string_tests
    @tables = ((@string_tests.length/10.0).ceil)-1
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
    params.require(:pv_array_test).permit(:pv_commission_id, :initial_verification, :inspector,
      :test_instruments, :combiner, :mfg, :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic,
      string_tests_attributes: [:id, :_destroy, :pv_array_test_id, :name, :array_module, :array_quantity,
        :array_parameters_voc, :array_parameters_isc, :string_type, :string_rating, :string_d_rating,
        :string_capacity, :wiring_type, :wiring_insulation, :wiring_size, :string_test_voc, :string_test_isc,
        :string_test_irradiance, :string_test_voltage, :array_insulation_resistance_test_voltage, :array_insulation_resistance_pos,
        :array_insulation_resistance_neg, :array_module_flir_pic])
  end
end
