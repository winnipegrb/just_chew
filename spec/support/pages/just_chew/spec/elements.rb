module JustChew::Spec

  class Image < Section

    def has_src?(src)
      root_element[:src].end_with? src
    end
  end
end
