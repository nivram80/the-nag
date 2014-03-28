class PagesController < ApplicationController
  protect_from_forgery
  
  def home
    # binding.pry
    if session[:user_id]
      # binding.pry
      redirect_to :dashboard
    end
  end
    
end
