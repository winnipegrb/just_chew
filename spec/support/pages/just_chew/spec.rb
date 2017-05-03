module JustChew::Spec

  module DSL
    extend ActiveSupport::Concern

    SpecHelper.helper_modules.each do |helper|
      if helper.include_type.eql? :feature
        include helper
      end
    end
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
