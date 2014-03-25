class EventsController < ApplicationController

	def index
	end

	def show
	end

	def edit
	end

	def update
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(params[:event])
		redirect_to(:dashboard)
	end

	def destroy
		Event.find(params[:id]).destroy
		redirect_to(:dashboard)
	end

end