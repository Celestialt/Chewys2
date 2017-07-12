class AddTotalToCartItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :cart_items, :subtotal, :decimal, :precision => 8, :scale => 2
  	add_column :cart_items, :total, :decimal, :precision => 8, :scale => 2
  end
end
