Rails.application.routes.draw do
  get 'sessions/new'

  root 'departments#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :departments 
  resources :products
  resources :users
  resources :addresses
  resources :relationships
  resources :critics
  resources :questions
  resources :answers
  resources :glance_names
  resources :feature_names
  resources :spec_names
  resources :concern_names
  resources :reviews
  resources :glance
  resources :features
  resources :specs
  resources :concerns
  resources :carts
  resources :carted_products
  resources :orders
  resources :ordered_products

end
