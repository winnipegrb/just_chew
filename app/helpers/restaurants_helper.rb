module RestaurantsHelper
  def restaurants_json
    serialize(@restaurants || []).as_json
  end
end
