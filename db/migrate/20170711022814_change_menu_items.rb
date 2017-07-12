class ChangeMenuItems < ActiveRecord::Migration[5.0]
  def change
	  change_table(:menu_items) do |t|
	  	t.change :price, :decimal, :precision => 8, :scale => 2

	  end
  end
end
