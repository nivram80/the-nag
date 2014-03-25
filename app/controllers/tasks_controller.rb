class TasksController < ApplicationController
  # before_filter :authorize, :only => [:new, :edit, :create, :update]
  
  # def toggle(attribute)
  #   self[attribute] = !send("#{attribute}?")
  #   self
  # end
  
  def index
    @task = Task.all
    redirect_to(:dashboard)
  end
  
  # def show
  #   @article = Article.find(params[:id])
  # end    
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
  end
    
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params[:task])
    
    if @task.save
      redirect_to(:dashboard)
    end
  end
      
  def destroy
    session[:user_id] = nil
    redirect_to(:dashboard)
  end
end