class ProjectsController < ApplicationController
  before_filter :authorize

  def index
      @user = User.find(params[:user_id])
      @projects = Project.all
  end

  def show
      @project = Project.find(params[:id])
  end

  def new
      @user = User.find(params[:user_id])
      @project = Project.new
  end

  def create
      @user = User.find(params[:user_id])
      @project = @user.projects.new(project_params)
      if @project.save
        redirect_to(user_projects_path(@user))
      else
        flash[:notice] = "Fill in all fields"
        redirect_to(new_user_project_path)
      end
  end

  def edit
      @project = Project.find(params[:id])
  end

  def update
     @project = Project.find(params[:id])
     @project.update_attributes(project_params)
     redirect_to project_path
  end

  def destroy
  end

  private

  def project_params
      params.require(:project).permit(:title, :description, :technology, :github, :problem, :solution, :features)
  end
end
