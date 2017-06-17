class AddTimeToBusinessHours < ActiveRecord::Migration[5.0]
  def change
    add_column :business_hours, :time, :string
    add_column :business_hours, :ampm, :string
  end
end
