Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :feed, only: :index
  resources :connections
  resources :reports
  resources :likes
  resources :comments
  resources :photos
  resources :posts
  resources :filters


  resources :explore, only: :index


  root to: "feeds#index"
end
