Rails.application.routes.draw do
  devise_for :users
  root to: "tasks#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tasks
  resources :users
  # get "tasks", to: "tasks#index"

  # # Defines the route for showing a task

  # get "tasks/:id", to: "tasks#show", as: :task

  # Defines the root path route ("/")
  # root "articles#index"
end
