class Administrator::FoodsController < ApplicationController
	def new
		@food = Food.new
	end
end
