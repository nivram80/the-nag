class TasksController < ApplicationController
  # before_filter :authorize, :only => [:new, :edit, :create, :update]
  
  def new
    @tasks = Task.new 
  end
  
  def create
    @tasks = Task.new(params[:task])
    
    if @tasks.save
      redirect_to(:dashboard)
    end
  end
  
  def edit
    @tasks = Task.find(params[:id])
  end
  
  def update
    @tasks = Task.find(params[:id])
    @tasks.update_attributes(params[:task])
    redirect_to(:dashboard)    

    @task = Task.new(params[:task])
    if @task.save 
      redirect_to(:dashboard)
    end
  end
  
  def new_task_for_group
    @task = Task.new(params[:task])
    
    if @task.save
      redirect_to(group_path(@task.group_id))
    end
  end
  
  def show
    
  end
      
  def destroy
    Task.find(params[:id]).destroy
    redirect_to(:dashboard)
  end
end