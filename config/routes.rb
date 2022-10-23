Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  get 'home/index', to: 'home#index'
  root 'home#index'
  resources :subscripts, only: %i[new create index]

  namespace :api do
    namespace :v1 do
      resources :subscripts, only: [:index,:create]
    end
  end
   
end
