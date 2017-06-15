Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :orders
  resources :messages
  resources :products

#  as :user do
#    get "edit_account", to: "devise/registrations#edit"
#  end

  get "support/index", as: 'support'
  root 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
