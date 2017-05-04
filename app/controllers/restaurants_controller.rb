class RestaurantsController < OrderingController

  before_action :load_restaurants

  def index; end

  private

  def load_restaurants
    @restaurants = Restaurant.order(:updated_at)
  end
end
