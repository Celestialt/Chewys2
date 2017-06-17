FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"

    factory :administrator do
      admin true
    end
  end
  

  factory :menu_item do
  	name "Homestyle Meatloaf Meal"
  	description "Delicious meatloaf with mashpotatoes and gravy"
  	price 17.99

  	association :user
  end

end
