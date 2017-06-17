Rails.application.routes.draw do
	devise_for :users
	root "static_pages#index"
	resources :business_hours, only: [:show]
  resources :menu_items, only: [:index, :show]
  	resources :images, only: [:create, :show]
	namespace :administrator do
		resources :menu_items, only: [:index, :new, :create, :show]
		resources :business_hours, only:  [:new, :create, :show]
	end
end
