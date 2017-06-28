Rails.application.routes.draw do
	devise_for :users
	root "static_pages#index"
	resources :business_hours, only: [:index, :show]
  resources :menu_items, only: [:index, :show]
  	resources :images, only: [:create, :show]
	namespace :administrator do
		resources :menu_items
		resources :business_hours
		resources :food_types, only: [:new, :create, :show]
		resources :foods, only: [:new, :create, :show]
	end
end
