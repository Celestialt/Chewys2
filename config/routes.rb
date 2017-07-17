Rails.application.routes.draw do
	devise_for :users
	root 'static_pages#index'
	resources :charges
	resources :cart_items
	resources :carts
	resources :foods, only: [:index, :show]
	resources :business_hours, only: [:index, :show]
  resources :menu_items, only: [:index, :show] 
  resources :images, only: [ :create, :show]
  	
	namespace :administrator do
		resources :menu_items 
		resources :business_hours
		resources :food_types
		resources :foods
	end
end
