Rails.application.routes.draw do
  # get 'projects/index'
  #
  # get 'projects/show'
  #
  # get 'projects/new'
  #
  # get 'projects/create'
  #
  # get 'projects/update'
  #
  # get 'projects/destroy'

  # get 'cities', to: 'cities#index'
  #
  # get 'cities/show', to: 'cities#show'
  #
  # get 'cities/new'
  #
  # get 'cities/create'
  root to: "landing#main"

  # Users
  resources :users do
      resources :projects
  end
  resources :projects
  # the root route is an HTML with all of the cities and whatever number of projectd associated with them.

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
