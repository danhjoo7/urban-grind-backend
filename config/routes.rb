Rails.application.routes.draw do
  resources :favorites
  resources :places
  resources :photos
  resources :reviews
  resources :users
  get '/current_user', to: 'auth#show'
  post '/auth', to: 'auth#create'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
