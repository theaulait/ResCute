Rails.application.routes.draw do
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "stores#index"
resources :stores, only: [:index, :show, :create]
resources :pets, only: [:index, :show, :create]
resources :users
resources :videos
# resources :videos do
#     post :vidSearch, :on => :collection
# root to: "videos#index"
# end
post "/index", to: "videos#getter"
# get "/main", to: "videos#getter"
end
