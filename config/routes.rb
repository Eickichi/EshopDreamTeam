Rails.application.routes.draw do
  root "items#index"
  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  get 'carts/:id' => "carts#show", as: "cart"
  post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'
  resources :orders
  #resources :carts
  resources :items
  #resources :line_items
  devise_for :users

  resources :users, only: [:show] do
    resources :avatars, only: [:create]
  end

  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
