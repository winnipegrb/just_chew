FactoryGirl.define do
  factory :restaurant do
    name    { "#{Faker::Food.ingredient} #{Faker::Company.suffix}" }
    address { "#{Faker::Address.street_name} #{Faker::Address.street_suffix}" }

    after(:build) do |restaurant, evaluator|
      restaurant.menu ||= build(:menu, restaurant: restaurant)
    end
  end
end
