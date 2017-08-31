FactoryGirl.define do
  factory :order_preference, class: 'Order::Preference' do
    # NOTE: defaults
    # type     :delivery
    # place_at { Time.now }
    user
  end
end
