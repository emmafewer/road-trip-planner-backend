Rails.application.routes.draw do
  resources :campground_saves
  resources :park_saves
  resources :park_images
  resources :campground_images
  resources :campgrounds
  resources :parks
  resources :road_trips
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
