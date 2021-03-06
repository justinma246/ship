Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get 'chat/conversations', to: 'chat#conversations'

  resources :sessions, only: [:create, :destroy]
  resources :home, only: [:login, :index]

  root to: 'home#login'
  get 'dock', to: 'dock#index'
  get 'profile', to: 'home#profile'
  post 'profile', to: 'home#profilePost'
  get 'chat', to: 'chat#index'
  post 'dock/decision', to: 'dock#decision'
end
