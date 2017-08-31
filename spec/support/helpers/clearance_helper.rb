module ClearanceHelper
  extend SpecHelper

  def reset_password_for(user = {})
    JustChew::Spec::Clearance::Password::New::Page.new.load do |page|
      return page.reset_password user
    end
  end

  def sign_in
    sign_in_with create(:user)
  end

  def sign_in_with(user = {})
    JustChew::Spec::Clearance::SignIn::Page.new.load do |page|
      page.sign_in user
    end
  end

  def sign_out
    JustChew::Spec::Application::Welcome::Page.new.load do |page|
      page.header.sign_out.click
    end
  end

  def sign_up_with(user = {})
    JustChew::Spec::Clearance::SignUp::Page.new.load do |page|
      page.sign_up user
    end
  end

  def expect_user_to_be_signed_in
    JustChew::Spec::Application::Welcome::Page.new.load do |page|
      expect(page.header).to have_sign_out
    end
  end

  def expect_user_to_be_signed_out
    JustChew::Spec::Application::Welcome::Page.new.load do |page|
      expect(page.header).to have_sign_in
    end
  end

  def user_with_reset_password
    reset_password_for create(:user)
  end
end
