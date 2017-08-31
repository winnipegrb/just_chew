require_relative '../menus'

module JustChew::Spec::Menus::Show

  class Page < JustChew::Spec::Application::Page
    set_url %q(/restaurants/{restaurant_id}/menu)
  end
end
