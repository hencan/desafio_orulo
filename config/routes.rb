Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :favorites

  # get "favorites/index"

  # post "favorites/create"

  # delete "favorite/destroy"
  
  get 'details/detail'

  devise_for :users

  # get 'home/index'
  
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
