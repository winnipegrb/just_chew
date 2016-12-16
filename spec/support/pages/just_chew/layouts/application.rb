module JustChew::Spec::Layouts

  module Application
    extend ActiveSupport::Concern

    class Header < SitePrism::Section
    end

    class Footer < SitePrism::Section

      class SocialMedia < SitePrism::Section
      end
    end

    included do
      section :header, Header, 'header.main'
      section :footer, Footer, 'footer.main'
    end
  end
end
