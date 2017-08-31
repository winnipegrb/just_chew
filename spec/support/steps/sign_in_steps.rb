module SignInSteps
  extend SpecSteps

  step 'I am a/an user' do
    @user = create(:user)
  end

  step 'I am a/an guest' do
    @user = build(:user)
  end
end
