require 'rails_helper'

RSpec.describe MealsController, type: :controller do
	describe "meals#show action" do
		it "should successfully show the page" do
			meal = Meal.create!
			get :show, id: meal.id
			expect(response).to have_http_status(:success)
		end
	end
end
