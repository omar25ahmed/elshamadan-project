Rails.application.routes.draw do
  root 'home#index'

  # contact for index post and get
  get 'contact', to: 'contact#index'
  post 'contact_index', to: 'contact#index'
end
