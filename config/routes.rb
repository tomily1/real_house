Rails.application.routes.draw do
  root 'assets#index'

  resources :assets, only: %i[create]
  resources :houses, only: %i[new create]
  resources :commercial_units, only: %i[new create]
  resources :complex_buildings, only: %i[new create]
end
