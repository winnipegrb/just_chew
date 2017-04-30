placeholder :page do
  match /welcome/ do
    JustChew::Spec::Application::Welcome::Page
  end

  match /restaurants/ do
    JustChew::Spec::Restaurants::Index::Page
  end
end
