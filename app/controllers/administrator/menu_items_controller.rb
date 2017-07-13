class Administrator::MenuItemsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@menu_items = MenuItem.all
	end

	def new
		@menu_item = MenuItem.new
	end

	def create
    @menu_item = current_user.menu_items.create(menu_item_params)
    if @menu_item.valid?
      redirect_to administrator_menu_item_path(@menu_item)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  	@menu_item = MenuItem.find(params[:id])
  end

  def edit
  	@menu_item = MenuItem.find(params[:id])
  end

  def update
  	@menu_item = MenuItem.find(params[:id])
  	@menu_item.update_attributes(menu_item_params)
  	redirect_to menu_item_path(@menu_item)
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to menu_item_path
  end

	private

	def menu_item_params
		params.require(:menu_item).permit(:name, :description, :price, :image)
	end
end
