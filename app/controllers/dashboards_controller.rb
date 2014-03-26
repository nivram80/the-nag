class DashboardsController < ApplicationController

	def dashboard
		@events = Event.where("user_id = ?", session[:user_id] ).order("due")
		@event = Event.new
	end

end