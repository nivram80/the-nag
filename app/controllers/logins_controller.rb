class LoginsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id # <-- a "log in" by authenticating and setting a session variable.
      redirect_to :dashboard
    else
      #raise "Login Failed."
      redirect_to :root
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to(:root)
  end
end