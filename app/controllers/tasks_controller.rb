class TasksController < ApplicationController
  # before_filter :authorize, :only => [:new, :edit, :create, :update]
  
  # def toggle(attribute)
  #   self[attribute] = !send("#{attribute}?")
  #   self
  # end
  
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
  end
      
  def destroy
    Task.find(params[:id]).destroy
    redirect_to(:dashboard)
  end
end