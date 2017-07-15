class Administrator::FoodsController < ApplicationController
	before_action :authenticate_user!

	def index
		
	end

	def new
		@food = Food.new
	end

	def create
		@food = current_user.foods.create!(food_params)
		if @food.valid?
		redirect_to administrator_food_path(@food)
		else
			render :new, status: :unprocessable_entity
		end

	end

	def show
		@food = Food.find(params[:id])

	end

	def edit
  	@food = Food.find(params[:id])
  end

  def update
  	@food = Food.find(params[:id])
  	if @food.update_attributes(food_params)
  		redirect_to foods_path
  	else 
  		render "edit"
  	end
  end

  def destroy
  	@food = Food.find(params[:id])
  	@food.destroy
  	redirect_to foods_path
  end

	private

	def food_params
		params.require(:food).permit(:food_type, :food_type_id, :food_name, :calorie, :total_fat, :serving_size, :saturated_fat, :trans_fat, :sodium, :sugar, :protein) 
	end
end


