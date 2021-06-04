Rails.application.routes.draw do
  devise_for :users
	root 'homes#index'
	resources :posts
	resources :profiles
	resources :users
	resources :arts
	namespace :admin do
		get "/", to: "homes#index"
		resources :posts
		resources :categories
		resources :users
		resources :arts
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
