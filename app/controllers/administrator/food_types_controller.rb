class Administrator::FoodTypesController < ApplicationController
	before_action :authenticate_user!

	
	def new
		@food_type = FoodType.new
	end

	def create
		@food_type = current_user.food_types.create(food_type_params)
		redirect_to new_administrator_food_path(@food_type)
	end


	private

	def food_type_params
		params.require(:food_type).permit(:name)
	end
end
