class BusinessHour < ApplicationRecord
	belongs_to :user, optional: true
	validates :day, presence: true
	validates :opening_time, presence: true
	validates :closing_time, presence: true
end
