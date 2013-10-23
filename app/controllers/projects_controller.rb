class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
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

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path, flash: {success: "Project was deleted."}
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

  private

  def project_params
    params.require(:project).permit(:name)
  end
end
