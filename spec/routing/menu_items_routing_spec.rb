require "rails_helper"

RSpec.describe MenuItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/menu_items").to route_to("menu_items#index")
    end

    

    it "routes to #show" do
      expect(:get => "/menu_items/1").to route_to("menu_items#show", :id => "1")
    end

    
  end
end
