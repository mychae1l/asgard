Rails.application.routes.draw do
  devise_for :users
	root 'homes#index'
	resources :posts
	resources :profiles
	resources :users
	namespace :admin do
		get "/", to: "homes#index"
		resources :posts
		resources :categories
		resources :users
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
