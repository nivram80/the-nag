class DashboardsController < ApplicationController

	def dashboard    
		@events = Event.order("due")
		@event = Event.create(params[:event])
		@events = Event.where("user_id = ?", session[:user_id]).order("due")
		@event = Event.new

		#@groups = Group.event.where("event.id = ?", session[:user_id])

		@task = Task.new
	end
end