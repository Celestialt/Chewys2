class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
    	t.belongs_to :cart
    	t.belongs_to :menu_item
      t.timestamps
    end
  end
end
