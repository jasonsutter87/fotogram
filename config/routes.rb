Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :feeds
  resources :connections
  resources :reports
  resources :likes
  resources :comments
  resources :photos
  resources :posts
  resources :filters

  root to: "feeds#index"
end
