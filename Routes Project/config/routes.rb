Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :Users, only: [:create,:destroy,:index,:show,:update]

  # get '/users', to: 'users#index', as: 'users'
  # post '/users', to: 'users#create'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get '/users/:id', to: 'users#show', as: 'user'
  # delete '/users/:id', to: 'users#destroy'

  resources :Artworks, only: [:create,:destroy,:index,:show,:update]
  resources :ArtworkShare, only: [:create,:destroy]
end
