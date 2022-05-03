Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root "articles#index"
  # get "/articles", to: "articles#index"
  root "home#main"
  get "/about", to: "home#about"
  get "/signup", to: "users#new"
  # post "/users", to: "users#create"
  resources :users, except: [:new]
  resources :articles


  # Defines the root path route ("/")
  # root "articles#index"
end
