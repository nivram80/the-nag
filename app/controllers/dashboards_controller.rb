class DashboardsController < ApplicationController

	def dashboard
		@events = Event.order("due")
		@event = Event.create(params[:event])
	end

end