class DashboardsController < ApplicationController

	def dashboard
		if params[:event]
			@selected_event = Event.find(params[:event][:id])
		else
			@selected_event = Event.where("user_id = ?", session[:user_id]).order("due").first
		end

		@event = Event.new

		@groups = Group.order("created_at DESC")

		@task = Task.new
		
	end

	def update
		@group = Group.find(params[:id])
		@group.update_attribute(:event_id, params[:event_id])
		
		redirect_to :dashboard
	end
end