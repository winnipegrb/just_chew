module Clearance::UserParamable
  extend ActiveSupport::Concern

  PARAMS = %i(first_name last_name email password)

  included do
    define_method :user_params do
      if creating? then user_strong_params else Hash.new end
    end
  end

  private

  def creating?
    action_name.to_sym.eql? :create
  end

  def user_strong_params
    params.require(
      Clearance.configuration.user_parameter
    ).permit(PARAMS)
  end

end
