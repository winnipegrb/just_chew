FactoryGirl.define do
  sequence :email do |n|
    Faker::Internet.email "user_#{n}"
  end

  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    email
    password 'password'

    after(:build) do |user, evaluator|
      user.order_preference ||= build(:order_preference, user: user)
    end
  end
end
