placeholder :page do
  match /welcome/ do
    JustChew::Spec::Application::Welcome::Page
  end

  match /restaurants/ do
    JustChew::Spec::Restaurants::Index::Page
  end

  match /menu/ do
    JustChew::Spec::Menus::Show::Page
  end
end
