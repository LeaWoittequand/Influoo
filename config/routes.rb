Rails.application.routes.draw do

  get 'messages/new'

  get 'messages/create'

  get 'conversations/index'

  get 'conversations/show'

  get 'conversations/new'

  get 'conversations/create'

  resources :favorites, only: [:index, :create, :destroy]
  resources :messages, only: [:index, :show, :new, :create]
  resources :influencers

  get "/dashboard" => "pages#dashboard"

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
