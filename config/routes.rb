Rails.application.routes.draw do
  devise_for :retailers
  devise_for :users
  resources :users, :only => [:show]
  resources :retailers, :only => [:show]
  root 'home#index'
  get 'shoes' => 'home#shoes'
  get 'clothes' => 'home#clothes'
  get 'accessories' => 'home#accessories'

  

  resources :items 
end
