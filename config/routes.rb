Rails.application.routes.draw do
  root 'products#index'
  get 'products/index'

  resources :products
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end