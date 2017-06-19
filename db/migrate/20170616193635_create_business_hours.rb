class CreateBusinessHours < ActiveRecord::Migration[5.0]
  def change
    create_table :business_hours do |t|
    	t.string :day
    	t.string :opening_time
    	t.string :closing_time
    	t.string :time
    	t.string :ampm
    	t.integer :user_id
    	t.timestamps
    end
    add_index :business_hours, :user_id
  end
end
