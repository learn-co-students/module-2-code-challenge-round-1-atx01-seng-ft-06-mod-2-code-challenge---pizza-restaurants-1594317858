Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'

  resources :restaurants, only: [:index,:show,:update,:edit]
  resources :pizzas, only: [:index, :show ,:new,:create]
end
