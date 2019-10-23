Rails.application.routes.draw do
  devise_for :users
  root "tweets#index"
  resources :tweets do
    resources :comments, only: [:create]
  end                   #tweets_controllerに対してのresourcesメソッド
  resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end
