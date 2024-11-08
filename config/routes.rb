Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'games#new'
  
  # get 'start_game/:id', to: 'games#start_game', as: 'start_game'

  resources :games do
    member do
      get 'start_game', to: 'games#start'
    end
  end

  resources :teams
  resources :rounds, only: [:show]
  resources :questions, only: [:show]
end
