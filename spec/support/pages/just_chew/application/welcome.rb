require_relative '../application'

module JustChew::Spec::Application::Welcome

  class AddressForm < JustChew::Spec::Section
    element :address, 'input[type="text"]'
    element :submit,  'input[type="submit"]'
  end

  class Banner < JustChew::Spec::Section
    element :title,    'h1', text: 'Order delivery or take-out!'
    element :subtitle, 'h2', text: 'Choose from a variety of local resturants'
    section :form, AddressForm, 'form'
  end

  class Card < JustChew::Spec::Section
    element :icon, '.card-icon-top .fa'
    element :block_title, '.card-block .card-title'

    def has_fa_icon?(fa_icon)
      icon[:class].include? "fa-#{fa_icon}"
    end
  end

  class Page < JustChew::Spec::Page
    include JustChew::Spec::Layouts::Application
    set_url %q(/)

    section  :banner, Banner, '#main-banner'
    sections :cards,  Card,   '.card'
  end
end
