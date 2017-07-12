class MenuItem < ApplicationRecord
	belongs_to :user, optional: true
	has_many :images
	has_many :foods
	mount_uploader :image, ImageUploader

	
end

