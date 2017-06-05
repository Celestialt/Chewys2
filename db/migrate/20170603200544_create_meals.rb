class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
    	t.string :title
    	t.text :description
    	t.integer :user_id
      t.timestamps
    end
  end
  add_index :meals, :user_id
end
