Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "stores#index"
resources :stores, only: [:index, :show, :create]
resources :pets, only: [:index, :show, :create]
root to: "pets#index"
# root to: "pets#index"
#resources :videos

resources :videos do
    post :vidSearch, :on => :collection
root to: "videos#index"
end


end
