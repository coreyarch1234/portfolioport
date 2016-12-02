Rails.application.routes.draw do
  get 'cities', to: 'cities#index'

  get 'cities/show', to: 'cities#show'

  get 'cities/new'

  get 'cities/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
