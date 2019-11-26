Rails.application.routes.draw do
  root "items#index"
  resources :orders
  resources :carts
  resources :products
  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

  post 'line_items' => "line_items#create"
  
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
