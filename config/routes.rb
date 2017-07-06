Rails.application.routes.draw do
	devise_for :users
	root 'static_pages#index'
	resources :cart_items, only: [:create]
	resources :carts
	resources :foods, only: [:index, :show]
	resources :business_hours, only: [:index, :show]
  resources :menu_items, only: [:index, :show] do
  	resources :images, only: [:create, :show]
  end
	namespace :administrator do
		resources :menu_items
		resources :business_hours
		resources :food_types
		resources :foods
	end
end
