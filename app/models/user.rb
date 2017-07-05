class User < ApplicationRecord
	has_many :menu_items
	has_many :foods
	has_many :business_hours
	has_many :carts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def current_cart
  	carts.first || carts.create!
  	
  end
end
