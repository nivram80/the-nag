class UsersController < ApplicationController

  def show
    # binding.pry
    @user = User.find(params[:id])
    @user_events = Event.where(:user_id => params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    # binding.pry
    @user = User.new(params[:user])    
    if @user.save
      session[:user_id] = @user.id  # Auto login to session on new user creation
      redirect_to(:dashboard)
    else
      render "new"
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    # binding.pry
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to(:dashboard)
    else
      render "edit"
    end  
  end
  
  def destroy
    @user = User.find(params[:id])
    if session[:user_id] == @user.id
      session[:user_id] = nil
    end
    @user.delete
    redirect_to(:root)
  end


end
