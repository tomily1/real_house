Rails.application.routes.draw do
  root 'properties#index'

  resources :properties, only: %i[create show] do
    post :purchase
  end

  resources :houses, only: %i[new create]
  resources :commercial_units, only: %i[new create]
  resources :complex_buildings, only: %i[new create]
end
