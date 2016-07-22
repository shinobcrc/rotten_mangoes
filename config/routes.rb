  RottenMangoes::Application.routes.draw do

  resources :add_image_to_reviews
      resources :movies do
      resources :reviews, only: [:new, :create]
      end
      resources :users, only: [:new, :create]
      resources :sessions, only: [:new, :create, :destroy]
      root to: 'movies#index'

    end