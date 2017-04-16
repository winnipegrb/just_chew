require 'rails_helper'

RSpec.feature 'Visitor signs up', js: true do
  scenario 'by navigating to the page' do
    JustChew::Spec::Clearance::SignIn::Page.new.tap do |page|
      page.load
      page.links.sign_up.click
    end

    expect(current_path).to eq sign_up_path
  end

  scenario 'with valid email and password' do
    sign_up_with attributes_for(:user)

    expect_user_to_be_signed_in
  end

  scenario 'tries with invalid email' do
    sign_up_with attributes_for(:user, email: 'invalid_email')

    expect_user_to_be_signed_out
  end

  scenario 'tries with blank password' do
    sign_up_with attributes_for(:user, password: '')

    expect_user_to_be_signed_out
  end
end
