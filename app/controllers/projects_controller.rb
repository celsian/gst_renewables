class ProjectsController < ApplicationController
  # include UserChecks
  before_action :authenticate_user!
  before_action :require_viewer, only: [ :show ]
  before_action :require_editor, except: [ :index, :show, :destroy ]
  before_action :require_admin, only: [ :destroy ]

  def index
    if current_user.editor || current_user.admin
      @projects = Project.all
    elsif current_user.reference_number
      @projects = []
      project = Project.find_by(reference_number: current_user.reference_number)
      project != nil ? @projects << project : nil
    else
      @projects = []
    end
  end

  def show
    @project = Project.find(params[:id])
    @pv_commissions = @project.pv_commissions
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      # Note.create(student: @student, note: "Student #{@student.id_number} was created.")
      redirect_to projects_path, flash: {success: "Project was created."}
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.attributes = project_params
    if project.save
      redirect_to project, flash: {success: "Project was updated."}
    else
      render :edit
    end
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path, flash: {success: "Project was deleted."}
  end

  private

  def project_params
    params.require(:project).permit(:name, :reference_number)
  end

  def require_admin
    unless current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_editor
    unless current_user.editor == true || current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

  def require_viewer
    project = Project.find(params[:id])
    unless project.reference_number == current_user.reference_number || current_user.admin || current_user.editor
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end
end
