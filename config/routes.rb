Rails.application.routes.draw do
  get 'rooms/index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :messages
  resources :chat_room
  # get 'messages/chat_room'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  resources :rooms
  resources :users
  root 'rooms#index'
end
