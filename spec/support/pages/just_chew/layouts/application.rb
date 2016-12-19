module JustChew::Spec::Layouts

  module Application
    extend ActiveSupport::Concern

    class Header < SitePrism::Section
      element  :logo,   '.navbar-brand img'
      elements :items,  '.navbar-nav .nav-item'
      element  :home,   '.navbar-nav .nav-link', text: 'Home'
      element  :log_in, '.navbar-nav .nav-link', text: 'Log In'
    end

    class Footer < SitePrism::Section

      class SocialMedia < SitePrism::Section
        elements :links,       '.navbar .nav-link'
        element  :twitter,     '.navbar .nav-link .fa-twitter'
        element  :facebook,    '.navbar .nav-link .fa-facebook'
        element  :google_plus, '.navbar .nav-link .fa-google-plus'
      end

      section :social_media, SocialMedia, '#social-media'
      element :copyleft, '#copyleft'
    end

    included do
      section :header, Header, 'header.main'
      section :footer, Footer, 'footer.main'
    end
  end
end
