Rails.application.routes.draw do

  resources :album, only: [:create, :index, :show]
  resources :artists, only: [:create, :index, :show]
  resources :songs, only: [:create, :index, :show]
end
