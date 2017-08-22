Rails.application.routes.draw do

  get 'favorites/index'

  get 'favorites/show'

  get 'favorites/new'

  get 'favorites/create'

  get 'favorites/edit'

  get 'favorites/update'

  get 'favorites/destroy'

  get 'messages/index'

  get 'messages/show'

  get 'messages/new'

  get 'messages/create'

  resources :influencers

  devise_for :users
  root to: 'pages#home'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
