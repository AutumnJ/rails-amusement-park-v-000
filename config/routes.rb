Rails.application.routes.draw do

  root 'welcome#home'
  resources :users
  resources :attractions

  # sessions
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  get "/signout", to: "sessions#destroy"

  # rides
  post "/rides/new", to: "rides#new"

end