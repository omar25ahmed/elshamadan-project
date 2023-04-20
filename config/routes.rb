Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  # contact for index post and get
  get 'contact', to: 'home#contact'
  post 'contact_index', to: 'home#contact'
  get 'about', to: 'home#about'

  # products
  resources :products, only: [:index]

  # brands
  resources :brands, only: [:show]

  # articles
  resources :articles, only: [:index, :show]
end
