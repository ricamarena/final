Rails.application.routes.draw do

  resources :projects
  resources :owners
  resources :users
  resources :sessions
  resources :investments


  get "/logout", to: "sessions#destroy"
  
  root to: "projects#index"
  
end
