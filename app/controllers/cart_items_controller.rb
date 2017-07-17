class CartItemsController < ApplicationController
	def create
		current_user.current_cart.cart_items.create!(cart_item_params)
		
	


	  # Amount in cents
    @amount = (current_cart_item.price * 100).to_i

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )

   redirect_to current_user.current_cart
  	rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end
def destroy
		@cart_item = current_user.current_cart.cart_items.find(params[:id])
		@cart_item.destroy
		redirect_to current_user.current_cart

	end
private
	def cart_item_params
		params.permit(:menu_item_id)
	end
end