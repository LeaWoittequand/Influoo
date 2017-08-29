Rails.application.routes.draw do


  resources :conversations, only: [:create] do
    resources :messages, only: [:create]
    member do
      post :close
    end
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  resources :favorites, only: [:index, :create, :destroy]
  resources :influencers

  get "/dashboard" => "pages#dashboard"
  get "/dashboard_profile" => "pages#dashboard_profile"
  get "/dashboard_favorites" => "pages#dashboard_favorites"
  get "test" => "pages#test"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  get '/contact' => 'pages#contact'
  get '/about' => 'pages#about'

  root 'subscriptions#index'
  resources :subscriptions, only: [:index, :show, :create, :new] do
    resources :payments, only: [:new, :create]
  end

  resources :orders, only: [:show, :create]


  # get 'messages/new'

  # get 'messages/create'

  # get 'conversations/index'

  # get 'conversations/show'

  # get 'conversations/new'

  # get 'conversations/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
