module JustChew::Spec

  module DSL
    extend ActiveSupport::Concern
  end

  class Page < SitePrism::Page
    include DSL

    def self.set_url(page_url)
      super "#{page_url}{?query*}"
    end

  end

  class Section < SitePrism::Section
    include DSL

    delegate :click, to: :root_element
    delegate :[],    to: :root_element
  end
end
