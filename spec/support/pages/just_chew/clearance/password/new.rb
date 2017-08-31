require_relative '../password'

module JustChew::Spec::Clearance::Password::New

  class Form < JustChew::Spec::Section
    element :email, '#password_email'

    element :submit, '.btn[value="Reset password"]'

    def reset_password(user = {})
      email.set user[:email]
      submit.click
      user.try(:reload)
    end
  end

  class Page < JustChew::Spec::Application::Page
    set_url %q(/passwords/new)

    section :form, Form, 'form'

    delegate :reset_password, to: :form
  end
end
