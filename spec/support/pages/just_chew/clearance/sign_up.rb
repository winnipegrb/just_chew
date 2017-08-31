require_relative '../clearance'

module JustChew::Spec::Clearance::SignUp

  class Form < JustChew::Spec::Section
    element :first_name, '#user_first_name'
    element :last_name,  '#user_last_name'
    element :email,      '#user_email'
    element :email,      '#user_email'
    element :password,   '#user_password'

    element :submit, '.btn[value="Sign up"]'

    def sign_up(user = {})
      first_name.set user[:first_name]
      last_name.set  user[:last_name]
      email.set      user[:email]
      password.set   user[:password]
      submit.click
    end
  end

  class LinksSection < JustChew::Spec::Section
    element :sign_in, 'a', text: 'Sign in'
  end

  class Page < JustChew::Spec::Application::Page
    set_url %q(/sign_up)

    section :form,  Form, 'form'
    section :links, LinksSection, '.other-links'

    delegate :sign_up, to: :form
  end
end
