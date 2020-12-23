Rails.application.routes.draw do
  get 'details/detail'
  devise_for :users
  resources :favs
  # get 'home/index'

  
  get 'home/about'

  get 'home/detail'

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
