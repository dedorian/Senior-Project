Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :orders
  resources :messages
  resources :products

  devise_scope :user do
    get 'users/:id' => 'registrations#show', as: user
  end

  get "support/index", as: 'support'
  root 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
