Rails.application.routes.draw do

# resources :users do
#   resources :items
# end
#
#
# resources :users do
#   resources :orders
#   end



  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  get "/users/:user_id/items" => "items#index", as: :user_items
  post "/users/:user_id/items" => "items#create"
  get "/users/:user_id/items/new" => "items#new", as: :new_user_item
  get "/users/:user_id/items/:id/edit" => "items#edit", as: :edit_user_item
  get "/users/:user_id/items/:id" => "items#show", as: :user_item
  patch "/users/:user_id/items/:id" => "items#update"
  delete "/users/:user_id/items/:id" => "items#destroy"
  get "/users" => "users#index", as: :user
  post "/users" => "users#create"
  get "/users/new" => "users#show", as: :new_user
  get "/users/:id/edit" => "users#edit", as: :edit_user
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  get "/orders" => "orders#index", as: :orders
  post "/orders" => "orders#create"
  get "/orders/new" => "orders#new", as: :new_order
  get "/orders/:id" => "orders#edit", as: :edit_order
  get "/orders/:id" => "orders#show", as: :order
  patch "/orders/:id" => "orders#update"
  delete "/orders/:id" => "orders#destroy"
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/new" => "users#new"
  get "/users/:id/edit" => "users#edit"
  get "/users/:id" => "users#show", as: :particular_user
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"







  #
  # get "users" => "users#index", as: :users
  # get "users/new" => "users#new", as: :new_user
  # get "users/:user_id" => "users#show", as: :user
  # post "users" => "users#create"
  # get "users/:current_user_id/edit" => "users#edit", as: :edit_user
  # patch "users/:current_user_id/" => "users#update"
  #
  #
  #
  # get "users/:user_id/items" => "items#index",   as: :user_items
  # get "users/:current_user_id/items/new" => "items#new", as: :new_user_item
  # get "users/:user_id/items/:item_id" => "items#show", as: :user_item
  # get "users/:current_user_id/items" => "items#current_user_items", as: :current_user_items
  # get "users/:current_user_id/items/:item_id" => "items#current_user_item", as: :current_user_item
  # post "users/:current_user_id/items" => "items#create"
  # get "users/:current_user_id/items/:item_id/edit" => "items#edit", as: :edit_user_item
  # patch "users/:current_user_id/items/:item_id" => "items#update"
  # delete "users/:current_user_id/items/:item_id" => "items#destroy"
  #
  # get "users/:current_user_id/orders/new" => "orders#new", as: :new_order
  # post "users/:current_user_id/orders/" => "orders#create"
  #
  # get "users/:user_id/items/:item_id/orders/:order_id/orderlines" => "orderlines#index", as: :order_orderlines
  # get "users/:user_id/items/:item_id/orders/:order_id/orderlines/new" => "orderlines#new", as: :new_order_orderlines

  # resources :users do
  #   resources :items
  # end
  #
  # resources :users do
  #   resources :orders
  # end


end
