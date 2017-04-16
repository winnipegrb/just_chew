Clearance::UsersController.class_eval do

  PARAMS = %i(first_name last_name email password)

  private

  def user_params
    if action_name.to_sym.eql? :create
      params.require(:user).permit(PARAMS)
    else
      Hash.new
    end
  end
end
