class Cart < ApplicationRecord
	belongs_to :user
	has_many :cart_items

	def total
	    items.sum(&:price)
	  end
		
end
