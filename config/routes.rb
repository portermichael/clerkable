Rails.application.routes.draw do
  get 'sessions/new'

  root 'departments#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :departments 
  resources :products
  resources :users
  resources :relationships
end
