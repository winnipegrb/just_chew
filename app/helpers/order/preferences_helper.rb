module Order::PreferencesHelper

  def order_preference_types
    Order::Preference.types
  end

  def order_preference_type_toggle_json
    {
      types:    order_preference_types.keys.map(&:capitalize),
      selected: order_preference_types[current_user.order_preference.type]
    }
  end
end
