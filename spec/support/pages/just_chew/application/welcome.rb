require_relative '../application'

module JustChew::Spec::Application::Welcome

  class Banner < JustChew::Spec::Section
  end

  class Card < JustChew::Spec::Section
  end

  class Page < JustChew::Spec::Page
    include JustChew::Spec::Layouts::Application
    set_url %q(/)

    section  :banner, Banner, '#main-banner'
    sections :cards,  Card,   '#card'
  end
end
