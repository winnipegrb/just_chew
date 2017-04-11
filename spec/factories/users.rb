FactoryGirl.define do
  sequence :email do |n|
    Faker::Internet.email "user_#{n}"
  end

  factory :user do
    email
    password 'password'
  end
end
