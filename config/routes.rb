Rails.application.routes.draw do
  get 'home/index', to: 'home#index'
  root 'home#index'
end
