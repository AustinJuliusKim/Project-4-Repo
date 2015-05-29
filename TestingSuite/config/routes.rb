Rails.application.routes.draw do
  resources :users do
  		resources :orders
  	end

  	resources :orders #, only: [:new, :index, :create, :show]
end
