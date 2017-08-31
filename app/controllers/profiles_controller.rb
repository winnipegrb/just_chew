class ProfilesController < ApplicationController

  before_action :require_login

  def show; end

  def update
    if current_user.update user_params
      render :show, status: :ok
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(
      Clearance.configuration.user_parameter
    ).permit(Clearance::UsersController::PARAMS)
  end
end
