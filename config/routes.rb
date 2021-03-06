Rails.application.routes.draw do
  root "items#index"
  resources :orders
  resources :carts
  resources :items
  resources :line_items
  devise_for :users

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
