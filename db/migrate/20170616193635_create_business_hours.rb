class CreateBusinessHours < ActiveRecord::Migration[5.0]
  def change
    create_table :business_hours do |t|
    	t.string :day
    	t.string :opening_time
    	t.string :closing_time
      t.timestamps
    end
  end
end
