Rails.application.routes.draw do
  get 'words/index'
  devise_for :users
  root "homepages#index"
  get "homepages/index"
  post "/words/new", to: "words#create"
  post "/categories/new", to: "categories#create"
  # post "/trainee_tests", to: "trainee_tests#create"

  resources :words
  resources :categories
end
