Rails.application.routes.draw do
  devise_for :retailers, path:"", path_names: {sign_in: 'retailer_login', sign_out:'retailer_logout', sign_up:'retailer_register'}
  devise_for :users, path:"", path_names: {sign_in: 'user_login', sign_out:'user_logout', sign_up:'user_register'}
  root 'home#index'
  get 'shoes' => 'home#shoes'
  get 'clothes' => 'home#clothes'
  get 'accessories' => 'home#accessories'


  resources :items
end
