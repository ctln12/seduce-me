Rails.application.routes.draw do
  get 'chats/create'
  get 'chats/new'
  get 'chats/show'
  get 'chats/index'
  devise_for :users
  root to: 'stories#index'
  resources :stories, only: [:index] do
    resources :questions, only: [:show]
  end
  resources :chats
end
