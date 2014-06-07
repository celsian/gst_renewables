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

    if @pv_array_test.pv_commission
      @project = @pv_array_test.pv_commission.project
    else
      @project = @pv_array_test.recombiner.pv_commission.project
    end
  end

  def new
    @pv_array_test = PvArrayTest.new
    @pv_array_test.string_tests.build
  end

  def create
    pv_array_test = PvArrayTest.new(pv_array_test_create_params)

    if pv_array_test.save
      if params["pv_array_test"]["string_tests_attributes"]
        StringTest.import(params["pv_array_test"]["string_tests_attributes"]["0"]["pv_array_test"], pv_array_test) #this passes the single CSV that the user selected which will always be in position 0 because there is only one string_tests.build in the pv_array_test controller
        if pv_array_test.string_tests.size == 0
          if pv_array_test.pv_commission
            redirect_target = pv_array_test.pv_commission
          else
            redirect_target = pv_array_test.recombiner
          end

          pv_array_test.destroy
          redirect_to redirect_target, flash: {error: "Error: PV Array Test was NOT created, String Test data for this combiner does not exist. Please check to ensure that the test data for the combiner you are adding has been included in the CSV file."}
        else
          redirect_to pv_array_test, flash: {success: "PV Array Test: #{pv_array_test.name} was created."}
        end
      else
        if pv_array_test.pv_commission
          redirect_target = pv_array_test.pv_commission
        else
          redirect_target = pv_array_test.recombiner
        end

        pv_array_test.destroy
        redirect_to redirect_target, flash: {error: "Error: PV Array Test was NOT created, String Test data was not included."}
      end
    else
      flash[:error] = "Error: #{@pv_array_test.error_messages}"
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
      flash[:error] = "Error: #{@pv_array_test.error_messages}"
      render :edit
    end
  end

  def destroy
    pv_array_test = PvArrayTest.find(params[:id])

    name = pv_array_test.name

    if pv_array_test.pv_commission
      pv_commission = pv_array_test.pv_commission
    else
      pv_commission = pv_array_test.recombiner.pv_commission
    end

    pv_array_test.destroy
    redirect_to pv_commission, flash: {success: "PV Array Test #{name} was deleted."}
  end

  private
  def pv_array_test_create_params
    params.require(:pv_array_test).permit(:pv_commission_id, :recombiner_id, :name, :megger_test, :comments, :voltage, 
      :test_voltage, :pos, :neg, :initial_verification, :inspector, :test_instruments, :combiner, :mfg,
      :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic)
  end

  def pv_array_test_params
    params.require(:pv_array_test).permit(:pv_commission_id, :recombiner_id, :name, :megger_test, :comments, :voltage, 
      :test_voltage, :pos, :neg, :initial_verification, :inspector, :test_instruments, :combiner, :mfg,
      :combiner_exterior_pic, :combiner_interior_pic, :combiner_flir_pic,
      string_tests_attributes: [:id, :_destroy, :pv_array_test_id, :name, :array_module, :array_quantity,
      :array_parameters_voc, :array_parameters_isc, :string_type, :string_rating, :string_d_rating,
      :string_capacity, :wiring_type, :wiring_insulation, :wiring_size, :string_test_voc, :string_test_isc,
      :string_test_irradiance, :string_test_voltage, :array_insulation_resistance_test_voltage,
      :array_insulation_resistance_pos, :array_insulation_resistance_neg, :array_module_flir_pic])
  end

  def require_editor
    unless current_user.editor == true || current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_viewer
    if PvArrayTest.find(params[:id]).pv_commission
      project = PvArrayTest.find(params[:id]).pv_commission.project
    else
      project = PvArrayTest.find(params[:id]).recombiner.pv_commission.project
    end

    unless project.users.exists?(current_user) || current_user.admin || current_user.editor
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

end
