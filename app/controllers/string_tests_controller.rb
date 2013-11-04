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

    if string_test.save
      redirect_to string_test.pv_array_test, flash: {success: "String Test #{string_test.name} was updated."}
    else
      render :edit
    end
  end

  def edit_individual
  end

  def update_individual
  end

  private

  def string_test_params
    params.require(:string_test).permit(:name, :array_module, :array_quantity, :array_parameters_voc, :array_parameters_isc, :string_type, :string_rating, :string_d_rating, :string_capacity, :wiring_type, :wiring_insulation, :wiring_size, :string_test_voc, :string_test_isc, :string_test_irradiance, :string_test_voltage, :array_insulation_resistance_test_voltage, :array_insulation_resistance_pos, :array_insulation_resistance_neg, :array_module_flir_pic)
  end

end