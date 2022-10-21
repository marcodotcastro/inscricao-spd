Rails.application.routes.draw do
  get 'home/index', to: 'home#index'
  root 'home#index'
  resources :subscripts, only: %i[new create]
end
