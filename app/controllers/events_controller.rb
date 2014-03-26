class EventsController < ApplicationController

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(params[:event])
		@events = Event.order("due")
		if @event.save
			redirect_to(:dashboard)
		else
			render :template => "dashboards/dashboard"
		end
	end

	def destroy
		Event.find(params[:id]).destroy
		redirect_to(:dashboard)
	end

end