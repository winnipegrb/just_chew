require_relative '../restaurants'

module JustChew::Spec::Restaurants::Index

  Image = JustChew::Spec::Image

  class Restaurant < JustChew::Spec::Section
    section :logo, Image, '.image img'
    element :name,        '.info h3'
    element :address,     '.info p'
  end

  class Page < JustChew::Spec::Application::Page
    set_url %q(/restaurants)

    sections :restaurants, Restaurant, '.restaurant'
  end
end
