Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'

  ### Clearance ###

  resources :passwords, controller: 'clearance/passwords', only: %i(create new)
  resource :session, controller: 'clearance/sessions', only: %i(create)

  resources :users, controller: 'users', only: %i(create) do
    resource :password,
             controller: 'clearance/passwords',
             only: %i(create edit update)
  end

  get '/sign_in', to: 'clearance/sessions#new', as: 'sign_in'
  delete '/sign_out', to: 'clearance/sessions#destroy', as: 'sign_out'
  get '/sign_up', to: 'clearance/users#new', as: 'sign_up'

  #################

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
