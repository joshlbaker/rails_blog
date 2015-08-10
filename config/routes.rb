Rails.application.routes.draw do

  #user 
  get "/signup", to: "users#new"
  get "/profile", to: "users#show"
  resources :users, only: [:create]

  #session
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  # post "/sessions", to: "sessions#create"
  resources :sessions, only: [:create]

  #comments
  resources :comments, except: [:index]

  root "comments#index"

end
