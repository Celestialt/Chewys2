class ChangeMenuItems2 < ActiveRecord::Migration[5.0]
  def change
  	change_table(:menu_items) do |t|
	  	t.change :price, :money, default: 0

	  end
  end
end
