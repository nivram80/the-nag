class DashboardsController < ApplicationController

	def dashboard
		@events = Event.where("user_id = ?", session[:user_id]).order("due")
		@event = Event.new

		#@groups = Group.event.where("event.id = ?", session[:user_id])

		#@tasks = Task.where("group_id = ?", @group)
	end

end