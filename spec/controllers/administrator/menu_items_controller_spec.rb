require 'rails_helper'

RSpec.describe Administrator::MenuItemsController, type: :controller do
	# include Devise::Test::ControllerHelpers
	describe "menu_items#index action" do
		it "should successfully show the page" do

			menu_item = FactoryGirl.create(:menu_item)
			sign_in menu_item.user
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "administrator/menu_items#new action" do
		it "should require administrator to be logged in" do
			get :new
			expect(response).to redirect_to new_user_session_path
		end
	
		it "should successfully show the new form to administrator" do
			user = FactoryGirl.create(:administrator)
			sign_in user

			get :new
			expect(response).to have_http_status(:success)
		end
	end

		describe "administrator/menu_items#create action"

			it "should require users to be logged in" do
				post :create
				expect(response).to redirect_to_new_user_session_path
			end

			it "should successfully create a  new menu item in database" do
				user = FactoryGirl.create(:administrator)
				sign_in user

				post :create
				expect(response).to redirect_to new_user_session_path

				menu_item = MenuItem.last
				expect(menu_item.administrator).to eq(administrator)
			end
			it "should properly deal with validation errors" do
				user = FactoryGirl.create(:administrator)
				sign_in user

				menu_item_count = MenuItem.count
	      post :create
	      expect(response).to have_http_status(:unprocessable_entity)
	      expect(menu_item_count).to eq MenuItem.count

			end
		end
end


	# describe "administrator/menu_items#create action" do

	# 	it "should require users to be logged in as administrator" do
	# 		post :create, params: { menu_item: {name: "House Salad" , description: "Salad with carrots, onions, and blue cheese, choice of dressing", price: 7.99}}
	# 		expect(response). to redirect_to new_user_session_path
	# 	end

	# 	it "should successfully create a new menu_item in database for administrator" do
	# 		administrator = FactoryGirl.create(:administrator)
	# 		sign_in administrator
			
	# 		post :create, params: {
	# 			menu_item: {

	# 				name: 'Cheese steak meal'
	# 				description: 'Delicious Cheesesteak topped with onions and mushrooms with cheese and side of fries'
	# 				price: 8.95
	# 		} }

	# 		expect(response).to redirect_to root_path

	# 		menu_item = MenuItem.last
	# 		expect(menu_item.name) to eq('House Salad')
	# 		expect(menu_item.description) to eq('Salad with carrots, oninons, and choice of dressing')
	# 		expect(menu_item.price)to eq(7.99)
	# 		expect(menu_item.administrator). to eq(administrator)
	# 	end
	# end
# end

