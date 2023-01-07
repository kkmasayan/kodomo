Rails.application.routes.draw do
  devise_for :users
  root to: 'diaries#index'
  resources :diaries do
    resources :comments, only: :create
    resources :favorites, only:[:create, :destroy]
  end
  resources :users do
    get :favorites, on: :collection
  end
end
