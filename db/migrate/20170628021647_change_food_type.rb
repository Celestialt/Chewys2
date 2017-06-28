class ChangeFoodType < ActiveRecord::Migration[5.0]
  def change
  	remove_column :food_types, :appetizer
  	remove_column :food_types, :pizza
  	remove_column :food_types, :pasta
  	remove_column :food_types, :chicken
  	remove_column :food_types, :soup
  	remove_column :food_types, :dessert
  	remove_column :food_types, :beverage

  	add_column :food_types, :name, :string
  	rename_column :foods, :food_id, :food_type_id
  end
end

