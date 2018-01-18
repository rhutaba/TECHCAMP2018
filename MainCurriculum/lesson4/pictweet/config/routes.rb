Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resource :users, only: [:show]
  resource :tweets
end
