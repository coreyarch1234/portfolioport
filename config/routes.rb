Rails.application.routes.draw do
  root to: "static_pages#landing"

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

 


  # Users

  # get 'signup', to: "users#new", as: :new_user
  # get 'login', to: "sessions#new", as: :new_session

  # get 'profile', to: "users#show", as: :profile

  resources :users do
      resources :projects
  end
  resources :projects
end
