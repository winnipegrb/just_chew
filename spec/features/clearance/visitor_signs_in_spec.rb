require 'rails_helper'

RSpec.feature 'Visitor signs in', js: true do
  scenario 'with valid email and password' do
    create_user  email: 'user@example.com', password: 'password'
    sign_in_with email: 'user@example.com', password: 'password'

    expect_user_to_be_signed_in
  end

  scenario 'with valid mixed-case email and password ' do
    create_user  email: 'user.name@example.com', password: 'password'
    sign_in_with email: 'User.Name@example.com', password: 'password'

    expect_user_to_be_signed_in
  end

  scenario 'tries with invalid password' do
    create_user  email: 'user@example.com', password: 'password'
    sign_in_with email: 'user@example.com', password: 'wrong_password'

    expect_page_to_display_sign_in_error
    expect_user_to_be_signed_out
  end

  scenario 'tries with invalid email' do
    sign_in_with email: 'unknown.email@example.com', password: 'password'

    expect_page_to_display_sign_in_error
    expect_user_to_be_signed_out
  end

  private

  def create_user(user = {})
    FactoryGirl.create(:user, user)
  end

  def expect_page_to_display_sign_in_error
    expect(page.body).to include(
      I18n.t('flashes.failure_after_create', sign_up_path: sign_up_path)
    )
  end
end
