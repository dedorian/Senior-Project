Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :orders
  resources :messages
  resources :products

  get "support/index", as: 'support'
  get "orders/customer_orders", as: 'my_order'
  root 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
