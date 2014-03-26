class DashboardsController < ApplicationController

	def dashboard
		if params[:event]
			@selected_event = Event.find(params[:event][:id])
		else
			@selected_event = Event.where("user_id = ?", session[:user_id]).order("due").first
		end
		@event = Event.new
		#@groups = Group.event.where("event.id = ?", session[:user_id])

		@task = Task.new
	end

end