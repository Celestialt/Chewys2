Rails.application.routes.draw do
	devise_for :users
	root "static_pages#index"
	resources :business_hours, only: [:index]
  resources :menu_items, only: [:index, :show]
  	resources :images, only: [:create, :show]
	namespace :administrator do
		resources :menu_items, only: [:new, :create, :show]
		resources :business_hours, only:  [:index, :new, :create, :show]
	end
end
