Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  # root "articles#index"
  root "rounds#index"
  resources :rounds
end