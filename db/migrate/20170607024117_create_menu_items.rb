class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :user_id
      t.timestamps
    end
    add_index :menu_items, :user_id
  end
end
