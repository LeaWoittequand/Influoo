Rails.application.routes.draw do

  resources :favorites, only: [:index, :create, :destroy]
  resources :messages, only: [:index, :show, :new, :create]
  resources :influencers

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
