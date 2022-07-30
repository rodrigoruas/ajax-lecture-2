Rails.application.routes.draw do
  root to: 'restaurants#index'

  post :update_search, to: "restaurants#update_search"
  resources :restaurants do 
    resources :reviews, only: :create
  end
end
