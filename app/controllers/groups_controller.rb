class GroupsController < ActionController::Base
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
    binding.pry
    redirect_to(@group) 
 
  end
  def edit
  end
  def destroy
  end
  
  def show
    binding.pry
    @group = Group.find(params[:id])
    @tasks = Task.where("group_id = #{@group.id}")
    @task = Task.new
    binding.pry
  end
  
  def newgrouptask
  end
end
