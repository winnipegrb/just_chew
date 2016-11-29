class WelcomePage < SpecPage
  set_url %q(/)

  element :header, 'h1', text: 'Welcome'
end
