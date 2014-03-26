class GroupsController < ApplicationController
  protect_from_forgery
  
  def new
    @group = Group.new
    @task = Task.new
  end
  def create
    @group = Group.new(params[:group])
    @group.save 
    @tasks = Task.where("group_id = #{@group.id}")
    @task = Task.new(:desc => params[:task][:desc], :group_id => @group.id)
    @task.save

    redirect_to(@group) 
 
  end
  def edit
  end
  def destroy
  end
  
  def show

    @group = Group.find(params[:id])
    @tasks = Task.where("group_id = #{@group.id}")
    @task = Task.new

  end
  
  def newgrouptask
  end
end
