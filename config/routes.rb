Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get 'sessions/new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  resources :users
  resources :sessions


get '/album' => 'home#headphones'
get '/users/:id' => 'home#headphones'
get 'users/show/:id'  => 'users#show'


end
