Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  # contact for index post and get
  get 'contact', to: 'home#contact'
  post 'contact_index', to: 'home#contact'
  get 'about', to: 'home#about'
end
