Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'

  resource :profile, only: %i(show update)

  namespace :order do
    resource :preference, only: %i(update)
  end

  resource :locale, only: %i() do
    post :find
  end

  resources :restaurants, only: %i(index) do
    resource :menu, only: %i(show)
  end
end
