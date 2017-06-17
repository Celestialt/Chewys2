class Administrator::BusinessHoursController < ApplicationController
	before_action :authenticate_user!
	
	def new
		@business_hour = BusinessHour.new
	end

	
	def create
		@business_hour = current_user.business_hours.create(business_params)
		redirect_to administrator_business_hour_path(@business_hour)
		
	end

	private
	
	def business_hour_params
		params.require(:business_hour).permit(:day, :opening_time, :closing_time)
	end
	
end
