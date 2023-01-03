Rails.application.routes.draw do
  devise_for :users
  root to: 'diaries#index'
  resources :diaries do
    resources :comments, only: :create
<<<<<<< Updated upstream
    resources :favorites, only: %i[create destroy]
=======
<<<<<<< HEAD
<<<<<<< Updated upstream
    resources :favorites, only: [:create, :destroy]
=======
    resources :favorites, only: %i[create destroy]
>>>>>>> d686ea1030dd56fed5b6d7819a90ffd2f225d68c
>>>>>>> Stashed changes
  end
  resources :users do
    get :favorites, on: :collection
=======
    resouces :favorites, only: [:create, :destroy]
>>>>>>> Stashed changes
  end
end
