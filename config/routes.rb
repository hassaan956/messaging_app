Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'chatroom/index'
  # post  'sessions/create'
  
  mount ActionCable.server, at: '/cable'
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'message', to: 'messages#create'
  get 'logout', to: 'sessions#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
