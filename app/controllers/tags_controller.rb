class TagsController < ApplicationController

  before_filter :find_tag

  def index
    list
    render('list')
  end
  
  def list
    @tags = Tag.order("tags.username ASC").where(:project_id => @project.id)
  end
	def create
    @project = Project.find(params[:project_id])
    @tag = @project.tags.create(params[:tag])
    redirect_to project_path(@project)
  end

   def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

  private 
  def find_tag
    if params[:project_id]
      @project = Project.find_by_id(params[:project_id])
    end
    
  end
end
