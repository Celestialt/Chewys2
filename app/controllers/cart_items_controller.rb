class CartItemsController < ApplicationController
	def create
		current_user.current_cart.cart_items.create!(cart_item_params)
		redirect_to current_user.current_cart
	end

private
	def cart_item_params
		params.permit(:menu_item_id)
	end
end