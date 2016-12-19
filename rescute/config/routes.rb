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
<<<<<<< HEAD
root to: "pets#index"
# root to: "pets#index"
#resources :videos

resources :videos do
    post :vidSearch, :on => :collection
root to: "videos#index"
=======
resources :videos
resources :users

>>>>>>> 962808fa7e7987ca4baef4f5fc2db5497bdd35ff
end


end
