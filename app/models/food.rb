class Food < ApplicationRecord
	belongs_to :user
	belongs_to :food_type
	# has_many :menu_items
	validates :food_type, presence: true
end
