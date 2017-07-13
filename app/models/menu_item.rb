class MenuItem < ApplicationRecord
	belongs_to :user, optional: true
	has_many :images
	has_many :foods
	mount_uploader :image, ImageUploader

	validates :name, presence: true
	validates :description, presence: true
	validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
	
	
end

