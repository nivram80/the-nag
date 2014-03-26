class DashboardsController < ApplicationController

	def dashboard
    @tasks = Task.all
    
		@events = Event.order("due")
		@event = Event.create(params[:event])
	end
  
  
  

end