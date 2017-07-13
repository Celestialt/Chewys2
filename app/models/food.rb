class Food < ApplicationRecord
	belongs_to :user
	belongs_to :food_type
	# has_many :menu_items
	validates :food_type, presence: true
	validates :food_name, presence: true
	validates :serving_size, presence: true
	validates :calorie, presence: true
	validates :total_fat, presence: true
	validates :trans_fat, presence: true
	validates :sodium, presence: true
	validates :sugar, presence: true
	validates :protein, presence: true
end
