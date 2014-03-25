class DashboardsController < ApplicationController

	def dashboard
		@events = Event.where(?????).order("due")
		@event = Event.new
	end

end