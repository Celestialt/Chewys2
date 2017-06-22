class BusinessHoursController < ApplicationController
	def index
		@business_hours = BusinessHour.all
	end

	def show
		@business_hour = BusinessHour.find(params[:id])
	end

end	   
    
