class UsersController < Clearance::UsersController

    PARAMS = %i(first_name last_name email password)

    def user_params
      if creating? then user_strong_params else Hash.new end
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
