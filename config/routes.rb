Rails.application.routes.draw do
  devise_for :users
  root to: 'stories#index'

  resources :users, only: [:index, :show]

  resources :stories, only: [:index] do
    resources :questions, only: [:show]
    resources :games, only: :create
  end

  get '/stories/:id/gameover', to: 'stories#gameover'
  get '/stories/:id/win', to: 'stories#win'

  resources :chats, only: [:create, :show] do
    resources :messages, only: [:create]
  end

  mount ActionCable.server => "/cable"
end
