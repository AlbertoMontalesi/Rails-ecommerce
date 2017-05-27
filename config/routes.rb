Rails.application.routes.draw do
  root 'home#index'
  get  'Shoes' => 'home#shoes'
  get 'Clothes' => 'home#clothes'
  get 'Accessories' => 'home#accessories'

  resources :items
end
