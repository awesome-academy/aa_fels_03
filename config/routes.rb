Rails.application.routes.draw do
  devise_for :users
  root "homepages#index"
  get "homepages/index"

  resources :words, only:[:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
