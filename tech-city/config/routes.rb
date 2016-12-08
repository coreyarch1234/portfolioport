Rails.application.routes.draw do
  root to: "static_pages#landing"
  # Users

  # get 'signup', to: "users#new", as: :new_user
  # get 'login', to: "sessions#new", as: :new_session

  # get 'profile', to: "users#show", as: :profile

  resources :users do
      resources :projects
  end
  resources :projects
end
