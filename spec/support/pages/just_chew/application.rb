require_relative './spec'
require_relative './spec/elements'
require_relative './layouts/application'

module JustChew::Spec::Application

  class Page < JustChew::Spec::Page
    include JustChew::Spec::Layouts::Application
  end

end
