class DashboardsController < ApplicationController

	def dashboard
		@events = Event.order("due")
		@event = Event.new
	end

end