Rails.application.routes.draw do
  resources :menu_items
  devise_for :users
	root "static_pages#index"
end
