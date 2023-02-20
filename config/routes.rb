Rails.application.routes.draw do
  # DEVISE
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # ROOT
  root 'home#index'

  # PUBLIC
  resources :forums do
    resources :comments, only: [:create]
  end
  resources :comments
end
