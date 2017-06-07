require 'rails_helper'

RSpec.describe "menu_items/edit", type: :view do
  before(:each) do
    @menu_item = assign(:menu_item, MenuItem.create!(
      :name => "MyString",
      :description => "MyText",
      :price => "9.99"
    ))
  end

  it "renders the edit menu_item form" do
    render

    assert_select "form[action=?][method=?]", menu_item_path(@menu_item), "post" do

      assert_select "input#menu_item_name[name=?]", "menu_item[name]"

      assert_select "textarea#menu_item_description[name=?]", "menu_item[description]"

      assert_select "input#menu_item_price[name=?]", "menu_item[price]"
    end
  end
end
