require 'rails_helper'

RSpec.describe BusinessHoursController, type: :controller do
	let(:business_hour) {FactoryGirl.create(:business_hour)}
	describe "business_hours#show action" do
		it "should successfully show the page" do
			get :show, id: business_hour.id
			expect(response).to have_http_status(:success)
		end
	end

end
