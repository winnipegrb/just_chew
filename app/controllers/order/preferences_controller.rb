class Order::PreferencesController < ApiController

  before_action :require_login
  before_action :load_order_preference

  def update
    if @order_preference.update order_preference_params
      render json: @order_preference, status: :ok
    else
      render json: @order_preference.errors, status: :unprocessable_entity
    end
  end

  private

  def order_preference_params
    params.require(:order_preference).permit(:type)
  end

  def load_order_preference
    @order_preference = current_user.order_preference
  end
end
