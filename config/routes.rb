Rails.application.routes.draw do
  devise_for :users
	root "static_pages#index"
  resources :meals, only: [:index, :show]
end
