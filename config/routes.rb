Rails.application.routes.draw do
  get "notifications/index"
  mount ActionCable.server => '/cable'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "homepages#index"
  get "homepages/index"
  post "/words/new", to: "words#create"
  post "/categories/new", to: "categories#create"
  # post "/trainee_tests", to: "trainee_tests#create"

  resources :words
  resources :categories
end
