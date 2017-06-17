require 'rails_helper'

RSpec.describe BusinessHoursController, type: :controller do

	describe "business_hours#show action" do
		it "should successfully show the page" do
			get :show
			expect(response).to have_http_status(:success)
		end
	end

end
