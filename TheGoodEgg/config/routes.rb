Rails.application.routes.draw do

  root 'products#home'
  get 'products/home'

  devise_for :users
 
  resources :users, only: [:show, :edit, :update]
  resources :products, only: [:index]
  resource :cart, only: [:show]
  get 'cart/checkout' => 'carts#checkout'
  get 'cart/order_placed' => 'carts#order_placed'
  resources :order_items, only: [:create, :update, :destroy]

  resources :order, only: [:show]
  
end
