module JustChew::Spec
  class Page < SitePrism::Page

    def self.set_url(page_url)
      super "#{page_url}{?query*}"
    end

  end

  class Section < SitePrism::Section; end
end
