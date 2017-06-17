class MenuItem < ApplicationRecord
	belongs_to :user, optional:true
	has_many :images
	mount_uploader :image, ImageUploader
end

