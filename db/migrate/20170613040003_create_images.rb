class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
    	t.text :caption
    	t.integer :menu_item_id
      t.timestamps
    end
    add_index :images, [:menu_item_id]
  end
end
