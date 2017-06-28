class Administrator::FoodTypesController < ApplicationController
	before_action :authenticate_user!

	
	def new
		@food_type = FoodType.new
	end
end
