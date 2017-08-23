Rails.application.routes.draw do

  resources :conversations, only: [:create] do
    resources :messages, only: [:create]
    member do
      post :close
    end
  end

  resources :favorites, only: [:index, :create, :destroy]
  resources :influencers

  get "/dashboard" => "pages#dashboard"

  devise_for :users
  root to: 'pages#home'

  # get 'messages/new'

  # get 'messages/create'

  # get 'conversations/index'

  # get 'conversations/show'

  # get 'conversations/new'

  # get 'conversations/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
