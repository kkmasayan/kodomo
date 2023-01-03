Rails.application.routes.draw do
  devise_for :users
  root to: 'diaries#index'
  resources :diaries do
    resources :comments, only: :create
<<<<<<< HEAD
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
=======
    resources :favorites, only: %i[create destroy]
  end
  resources :users do
    get :favorites, on: :collection
>>>>>>> 6688c3eea5a269900823cc85f453671ffb98ae74
  end
end
