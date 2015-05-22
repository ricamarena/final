class ProjectsController < ApplicationController

  def index
    @projects=Project.all
  end

  def show
	  @project=Project.find_by(id: params["id"]) 
	  @investments = Investment.where(project_id: params["id"])
  end

  def edit
	  @project=Project.find_by(id: params["id"]) 
	  @investments = Investment.where(project_id: params["id"])
  end

  def update
  	Project.find_by(id: params["id"]).update(params["project"])
  	redirect_to projects_url
  end

  def destroy
  	Project.delete(params["id"])
  	redirect_to projects_url
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(params["project"])
    redirect_to projects_url
  end

end
