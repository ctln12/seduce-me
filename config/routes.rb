Rails.application.routes.draw do
  devise_for :users
  root to: 'stories#home'
  # root to: 'stories#index'
  resources :stories, only: [:index] do
    resources :questions, only: [:show]
    resources :games, only: :create
  end
  resources :chats, only: [:create, :show] do
    resources :messages, only: [:create]
  end
  get '/stories/:id/gameover', to: 'stories#gameover'
  get '/stories/:id/win', to: 'stories#win'

  mount ActionCable.server => "/cable"
end
