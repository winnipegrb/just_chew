class MenusController < OrderingController

  before_action :load_restaurant
  before_action :load_menu

  def show; end

  private

  def load_restaurant
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def load_menu
    @menu = @restaurant.menu
  end
end
