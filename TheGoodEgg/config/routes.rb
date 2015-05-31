Rails.application.routes.draw do

  root 'products#index'

  devise_for :users
 
  resources :users
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :udpate, :destroy]

  
end
