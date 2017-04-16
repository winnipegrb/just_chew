require_relative '../clearance'

module JustChew::Spec::Clearance::SignIn

  class Form < JustChew::Spec::Section
    element :email,    '#session_email'
    element :password, '#session_password'

    element :submit, '.btn[value="Sign in"]'

    def sign_in(user = {})
      email.set    user[:email]
      password.set user[:password] || user.password
      submit.click
    end
  end

  class LinksSection < JustChew::Spec::Section
    element :sign_up,         'a', text: 'Sign up'
    element :forgot_password, 'a', text: 'Forgot password?'
  end

  class Page < JustChew::Spec::Application::Page
    set_url %q(/sign_in)

    section :form,  Form, 'form'
    section :links, LinksSection, '.other-links'

    delegate :sign_in, to: :form
  end
end
