Rails.application.routes.draw do
  devise_for :users
  namespace :users do
    root to: "cities#index"
  end
  get 'cities/index', to: 'cities#index'
  get 'cities/cities/new', to: 'cities#new'
  post 'cities', to: 'cities#create'
  get 'cities/:id', to: 'cities#show', as: :city
  get 'cities/:id/edit', to: 'cities#edit', as: :edit_city
  patch 'cities/:id', to: 'cities#update'
  delete 'cities/:id', to: 'cities#destroy', as: :delete_city
  root to: "pages#home"
  get "/about", to: "pages#about"



  get "users/:id/profile", to: "pages#profile", as: :user_profile
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
