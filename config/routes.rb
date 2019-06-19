Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "homepages#index"
  get "homepages/index"
  post "/categories/new", to: "categories#create"

  resources :words
  resources :categories
  resources :users
  resources :lessons
end
