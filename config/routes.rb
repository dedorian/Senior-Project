Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_in: 'login', sign_out: 'logout',
    password: 'secret', confirmation: 'verification',
    registration: 'register', edit: 'edit/profile'
    }
  resources :orders
  resources :messages
  resources :products

  get "users/register", as: 'signup'

  get "support/index", as: 'support'
  root 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
