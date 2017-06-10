Rails.application.routes.draw do
	devise_for :users
	root "static_pages#index"
	namespace :administrator do
		resources :menu_items, only: [:new, :create, :show]
	end
  resources :menu_items
	
end
