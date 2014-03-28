class EventsController < ApplicationController

	def new
		@event = Event.new
	end

	def show
		@selected_event = Event.find(params[:id])

		render "dashboard"
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

	def update
		@selected_event = Event.find(params[:id])
		redirect_to(:dashboard)
	end

	def destroy
		Event.find(params[:id]).destroy
		redirect_to(:dashboard)
	end

end