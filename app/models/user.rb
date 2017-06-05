class User < ApplicationRecord
		has_many :meals

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
end
