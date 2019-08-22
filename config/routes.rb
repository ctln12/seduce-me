Rails.application.routes.draw do
  devise_for :users
  root to: 'stories#index'
  resources :stories, only: [:index] do
    resources :questions, only: [:show]
  end
  resources :chats, only: [:show] do
    resources :messages, only: [:create]
  end
  get '/stories/:id/gameover', to: 'stories#gameover'
  get '/stories/:id/win', to: 'stories#win'
end
