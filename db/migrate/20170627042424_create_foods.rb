class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
    	t.string :serving_size
    	t.string :calorie
    	t.string :total_fat
    	t.string :saturated_fat
    	t.string :trans_fat
    	t.string :sodium
    	t.string :sugar
    	t.string :protein
      t.string :food_name
      t.integer :food_id
      t.timestamps
    end
    add_index :foods, :food_id
  end
end
