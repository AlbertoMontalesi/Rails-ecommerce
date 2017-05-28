Rails.application.routes.draw do
  root 'home#index'
  get  'shoes' => 'home#shoes'
  get 'clothes' => 'home#clothes'
  get 'accessories' => 'home#accessories'

  resources :items
end
