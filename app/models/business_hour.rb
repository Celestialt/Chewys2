class BusinessHour < ApplicationRecord
	belongs_to :user, optional: true
end
