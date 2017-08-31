class Order::PreferenceSerializer < ApplicationSerializer
  attributes :type, :place_at

  def place_at
    object.place_at.to_i
  end
end
