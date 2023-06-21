Rails.application.routes.draw do
  resources :notatkas
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "users/:id", to: "users#destroy", as: :user
  
  # Defines the root path route ("/")
  root "home#index" 
end
