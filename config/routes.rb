Rails.application.routes.draw do
  resources :campground_saves
  resources :park_saves
  resources :park_images
  resources :campground_images
  resources :campgrounds
  resources :parks
  resources :road_trips
  resources :users

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'

end
