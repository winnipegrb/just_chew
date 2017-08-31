module JustChew::Spec

  class Image < Section

    def has_src?(src)
      root_element[:src].end_with? src
    end
  end

  class Form < Section

    element :submit, 'input[type="submit"]'

    def has_method?(method)
      root_element[:method].eql? method.to_s
    end

    def has_action?(action)
      root_element[:action].eql? action.to_s
    end
  end
end
