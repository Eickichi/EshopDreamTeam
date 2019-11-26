Rails.application.routes.draw do
  root "items#index"
  resources :orders
  resources :carts
  resources :products
  devise_for :users
  resources :charges


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
