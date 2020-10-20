Rails.application.routes.draw do
  root 'assets#index'

  resources :assets, only: %i[create]
end
