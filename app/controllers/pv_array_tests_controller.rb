class PvArrayTestsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_viewer, only: [ :show ]
  before_action :require_editor, except: [ :show ]

  def index

  end

  def show
    @pv_array_test = PvArrayTest.find(params[:id])
    @string_tests = @pv_array_test.string_tests
    @tables = ((@string_tests.length/10.0).ceil)-1
    @project = @pv_array_test.pv_commission.project
  end

  def new
    @pv_array_test = PvArrayTest.new
    @pv_array_test.string_tests.build
  end

  def create
    pv_array_test = PvArrayTest.new(pv_array_test_create_params)

    if pv_array_test.pv_commission.pv_array_tests == []
      pv_array_test.test_number = "001"
    else
      pv_array_test.test_number = (pv_array_test.pv_commission.pv_array_tests.last.test_number.to_i+1).to_s.rjust(3, '0')
    end

    if pv_array_test.save
      if params["pv_array_test"]["string_tests_attributes"]
        StringTest.import(params["pv_array_test"]["string_tests_attributes"]["0"]["pv_array_test"], pv_array_test) #this passes the single CSV that the user selected which will always be in position 0 because there is only one string_tests.build in the pv_array_test controller
        redirect_to pv_array_test, flash: {success: "PV Array Test was created."}
      else
        pv_commission = pv_array_test.pv_commission
        pv_array_test.destroy
        redirect_to pv_commission, flash: {error: "Error: PV Array Test was NOT created, String Test data was not included."}
      end
    else
      render :new
    end
  end

  def edit
    @pv_array_test = PvArrayTest.find(params[:id])

    @string_tests = @pv_array_test.string_tests
    @tables = ((@string_tests.length/10.0).ceil)-1

    @row = 0
    @line = 0
    @string_count = @pv_array_test.string_tests.count
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
  def pv_array_test_create_params
    params.require(:pv_array_test).permit(:pv_commission_id, :initial_verification, :inspector,
      :test_instruments, :combiner, :mfg, :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic)
    end

  def pv_array_test_params
    params.require(:pv_array_test).permit(:pv_commission_id, :initial_verification, :inspector,
      :test_instruments, :combiner, :mfg, :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic,
      string_tests_attributes: [:id, :_destroy, :pv_array_test_id, :name, :array_module, :array_quantity,
        :array_parameters_voc, :array_parameters_isc, :string_type, :string_rating, :string_d_rating,
        :string_capacity, :wiring_type, :wiring_insulation, :wiring_size, :string_test_voc, :string_test_isc,
        :string_test_irradiance, :string_test_voltage, :array_insulation_resistance_test_voltage, :array_insulation_resistance_pos,
        :array_insulation_resistance_neg, :array_module_flir_pic])
  end

  def require_editor
    unless current_user.editor == true || current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_viewer
    project = PvArrayTest.find(params[:id]).pv_commission.project
    unless project.reference_number == current_user.reference_number || current_user.admin || current_user.editor
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

end
