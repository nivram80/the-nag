class GroupsController < ActionController::Base
  protect_from_forgery
  
  def new
    @group = Group.new
  end
  def create
    @group = Group.new(params[:group])
  end
  def edit
  end
  def destroy
  end
end
