class Administrator::BusinessHoursController < ApplicationController
	before_action :authenticate_user!

	def index
		@business_hours = BusinessHour.all
	end
	
	def new
		@business_hour = BusinessHour.new
	end

	
	def create
		@business_hour = current_user.business_hours.create(business_hour_params)
		redirect_to business_hour_path(@business_hour)
		
	end

	def show
		@business_hour = BusinessHour.find(params[:id])
	end

	def edit
		@business_hour = BusinessHour.find(params[:id])
	end

	def update
		@business_hour = BusinessHour.find(params[:id])
  	@business_hour.update_attributes(business_hour_params)
  	redirect_to business_hours_path
	end

	def destroy
		@business_hour = BusinessHour.find(params[:id])
		@business_hour.destroy
		redirect_to business_hours_path
	end

	private
	
	def business_hour_params
		params.require(:business_hour).permit(:day, :opening_time, :closing_time)
	end
	
end
