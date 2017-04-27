Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'

  resource :profile, only: %i(show update)

  resources :restaurants, only: %i(index)
end
