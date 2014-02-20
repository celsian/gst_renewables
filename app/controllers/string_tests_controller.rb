class StringTestsController < ApplicationController
  def index
  end
  
  def show
  end

  def new
  end

  def create
  end

  def edit
    @string_test = StringTest.find(params[:id])
  end

  def update
    string_test = StringTest.find(params[:id])
    string_test.update string_test_params
    binding.pry
    if string_test.save
      redirect_to string_test.pv_array_test, flash: {success: "String Test #{string_test.name} was updated."}
    else
      render :edit
    end
  end

  def edit_all
    @pv_array_test = PvArrayTest.find(params[:id])
    @string_test = @pv_array_test.string_tests.first
  end

  def update_all
    pv_array_test = PvArrayTest.find(params[:id])
    string_tests = pv_array_test.string_tests
    string_tests.each do |string_test|
      string_test.update_attributes!(string_test_params.reject { |k,v| v.blank? })
    end
      redirect_to pv_array_test, flash: {success: "String Tests were updated."}
  end

  def edit_all_individually
    @pv_array_test = PvArrayTest.find(params[:id])
    @string_tests = @pv_array_test.string_tests
    @tables = ((@string_tests.length/10.0).ceil)-1
  end

  def update_all_individually
    binding.pry
    @string_tests = StringTest.update(params[:string_tests].keys, params[:string_tests].values).reject { |p| p.errors.empty? }
    if @string_tests.empty?
      flash[:notice] = "String Tests updated."
      redirect_to StringTest.find(params[:string_tests].first.first).pv_array_test
    else
      render :action => "edit_all_individually"
    end
  end

  private

  def string_test_params
    params.require(:string_test).permit(:name, :array_module, :array_quantity, :array_parameters_voc, :array_parameters_isc, :string_type, :string_rating, :string_d_rating, :string_capacity, :wiring_type, :wiring_insulation, :wiring_size, :string_test_voc, :string_test_isc, :string_test_irradiance, :string_test_voltage, :array_insulation_resistance_test_voltage, :array_insulation_resistance_pos, :array_insulation_resistance_neg, :array_module_flir_pic)
  end

end