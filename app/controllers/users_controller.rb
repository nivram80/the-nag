class UsersController < ApplicationController

  def show
    
  end
  
  def new
    @user = User.new
  end
  
  def create
    binding.pry
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id  # Auto login to session on new user creation
      
      redirect_to(:root)
    else
      render "new"
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end


end
