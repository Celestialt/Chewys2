class CreateFoodTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :food_types do |t|
    	t.string :appetizer
    	t.string :steak
    	t.string :pizza
    	t.string :pasta
    	t.string :chicken
    	t.string :soup
    	t.string :dessert
    	t.string :beverage
      t.timestamps
    end
  end
end
