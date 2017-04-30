module ParamsSteps
  extend SpecSteps

  def params_for_menus_show_page
    { restaurant_id: @restaurant.id }
  end

  def clearance_query_params
    if @user.try(:persisted?) then { as: @user.id } else { } end
  end

end
