class SecondChangeFoodType < ActiveRecord::Migration[5.0]
  def change
  	remove_column :food_types, :steak
  end
end
