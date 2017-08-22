Rails.application.routes.draw do
  get 'influencers/index'

  get 'influencers/show'

  get 'influencers/new'

  get 'influencers/create'

  get 'influencers/edit'

  get 'influencers/update'

  get 'influencers/destroy'

  devise_for :users
  root to: 'pages#home'
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
