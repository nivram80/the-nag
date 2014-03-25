class DashboardsController < ApplicationController

	def dashboard
		@events = Event.order("due DESC")
		@event = Event.create(params[:event])
		
	end

end