Rails.application.routes.draw do
  resources :forum_categories
  # DEVISE
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # ROOT
  root 'home#index'

  # PUBLIC
  resources :forums
end
