Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  devise_for :retailers
  devise_for :users
  resources :users, only: [:show]
  resources :retailers, only: [:show]

  root 'home#index'
  ## do post so the search does not clutter the url
  post '/', to: 'home#index'
  post '/shoes', to: 'home#shoes'
  post '/clothes', to: 'home#clothes'
  post '/accessories', to: 'home#accessories'

  get 'shoes' => 'home#shoes'
  get 'clothes' => 'home#clothes'
  get 'accessories' => 'home#accessories'

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy], defaults: { format: 'js' }
  resources :items
  resources :home do
    collection { post :search, to: 'home#index' }
  end
end
