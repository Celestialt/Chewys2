Rails.application.routes.draw do

	devise_for :users
 resources :products, only: [:index]
 resource :cart, only: [:show]
 resources :order_items, only: [:create, :update, :destroy]
 resources :meals, only: [:index, :show]
 root "static_pages#index"
  
end
