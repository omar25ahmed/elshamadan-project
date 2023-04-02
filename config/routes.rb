Rails.application.routes.draw do
  root 'home#index'

  resources :contact, only: %i[index]
end
