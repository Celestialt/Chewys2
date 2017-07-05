class Administrator::FoodsController < ApplicationController
	before_action :authenticate_user!

	def index
		
	end

	def new
		@food = Food.new
	end

	def create
		@food = current_user.foods.create!(food_params)
		redirect_to administrator_food_path(@food)
	end

	def show
		@food = Food.find(params[:id])

	end

	private

	def food_params
		params.require(:food).permit(:food_type, :food_type_id, :food_name, :calorie, :total_fat, :saturated_fat, :trans_fat, :sodium, :sugar, :protein) 
	end
end


