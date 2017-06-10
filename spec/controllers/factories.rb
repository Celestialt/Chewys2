FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password "secretPassword"
    password_confirmation "secretPassword"
  end
  factory :administrator do
    sequence :email do |n|
      "dummy2Email#{n}@gmail.com"
    end
    password "secret2Password"
    password_confirmation "secret2Password"
  end

  factory :menu_item do
  	name "Homestyle Meatloaf Meal"
  	description "Delicious meatloaf with mashpotatoes and gravy"
  	price 17.99

  	association :user
  end

end
