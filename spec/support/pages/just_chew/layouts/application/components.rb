module JustChew::Spec::Layouts::Application::Components

  class OrderTypeToggle < JustChew::Spec::Section
    element :delivery, '.btn', text: 'Delivery'
    element :pickup,   '.btn', text: 'Pickup'

    def selected
      [delivery, pickup].find do |button|
        button[:class].split(' ').include? 'active'
      end
    end

    def not_selected
      [delivery, pickup].find do |button|
        button[:class].split(' ').exclude? 'active'
      end
    end

    def toggle
      not_selected.tap do |button|
        button.click
        wait_for_ajax
      end.text.downcase
    end
  end
end
