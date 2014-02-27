class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin

  def index
    @users = []
    @editors = []
  end

  def add_editor_admin
    if params[:q]
      if params[:q].blank?
        params[:q] = "@"
      end
      @users = User.search(params[:q])
    else
      @users = []
    end
  end

  def view_editor_admin
    @editors = User.where(editor: true)
    @admins = User.where(admin: true)
    @rows = [@editors.length, @admins.length].max
  end

  def remove_admin
    user = User.find(params[:id])
    user.admin = false
    if user.save
      redirect_to view_editor_admin_path, flash: { success: "#{user.email} is no longer an Administrator." }
    else
      flash[:error] = "Error: There was a problem removing the rights."
      render :view_editor_admin
    end
  end

  def remove_editor
    user = User.find(params[:id])
    user.editor = false
    if user.save
      redirect_to view_editor_admin_path, flash: { success: "#{user.email} is no longer an Editor." }
    else
      flash[:error] = "Error: There was a problem removing the rights."
      render :view_editor_admin
    end
  end

  def add_editor
    user = User.find(params[:id])
    user.editor = true
    if user.save
      redirect_to add_editor_admin_path(q: params[:q]), flash: { success: "#{user.email} is now an Editor." }
    else
      flash[:error] = "Error: There was a problem adding the rights."
      render :add_editor_admin
    end
  end

  def add_admin
    user = User.find(params[:id])
    user.admin = true
    if user.save
      redirect_to add_editor_admin_path(q: params[:q]), flash: { success: "#{user.email} is now an Administrator." }
    else
      flash[:error] = "Error: There was a problem adding the rights."
      render :add_editor_admin
    end
  end

  private

  def require_admin
    unless current_user.admin == true
      redirect_to root_path, flash: { error: "You are not authorized to perform that action." }
    end
  end

end
