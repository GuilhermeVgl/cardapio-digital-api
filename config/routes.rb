Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :products
  resources :categories
  resources :users

  resources :addresses, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :carts, only: [:show] do
    resources :cart_items, only: [:create, :update, :destroy]
  end
  resources :orders, only: [:index, :show, :new, :create]

  root to: 'application#index'

  get '*path', to: 'application#not_found'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
