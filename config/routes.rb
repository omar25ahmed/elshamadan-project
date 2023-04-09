Rails.application.routes.draw do
  root 'home#index'

  # contact for index post and get
  get 'contact', to: 'home#contact'
  post 'contact_index', to: 'home#contact'
end
