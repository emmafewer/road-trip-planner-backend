Rails.application.routes.draw do
  resources :campground_books
  resources :park_books
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
