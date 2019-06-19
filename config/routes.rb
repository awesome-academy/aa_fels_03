Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "homepages#index"
  get "homepages/index"
  post "/categories/new", to: "categories#create"

  resources :relationships, only: [:create, :destroy]
  resources :words
  resources :categories
  resources :lessons do
    member do
      get :completed
    end
  end
  resources :users do
    member do
      get :following, :followers
    end
  end
end
