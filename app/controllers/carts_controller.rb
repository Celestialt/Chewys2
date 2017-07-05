class CartsController < ApplicationController
	def index
		@carts = current_user.carts
	end

	def show
		@cart = current_user.carts.find(params[:id])
	end
end
