class Administrator::MenuItemsController < ApplicationController
	before_action :authenticate_user!

	def new
		@menu_item = MenuItem.new
	end

	def create
    @menu_item = current_user.menu_items.create(menu_item_params)
    redirect_to administrator_menu_item_path(@menu_item)
  end

  def show
  	@menu_item = MenuItem.find(params[:id])
  end


	private

	def menu_item_params
		params.require(:menu_item).permit(:name, :description, :price)
	end
end
