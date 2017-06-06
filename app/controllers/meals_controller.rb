class MealsController < ApplicationController
	def index
		@meal = Meal.all
	end

	def show
		
	end



private

	def set_meal
		@meal = Meal.find(params[:id])
	end
end
