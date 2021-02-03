Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/newcomment', to: 'posts#comment'

  root 'posts#index'

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'

  get 'login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create'
  
  resources :follows, only: [:destroy]
  post '/follows/:id', to: 'follows#destroy'

  resources :likes, only: [:destroy]
  post '/likes/:id', to: 'likes#destroy'

  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  put '/posts/:id', to: 'post#update'

  resources :comments, only: [:new, :create, :show, :destroy]
  resources :follows, only: [:show]
  resources :likes, only: [:show]

  resources :users do
    resources :follows, only: [:new, :create]
  end
  resources :posts do
    resources :likes, only: [:new, :create]
  end
  
end
