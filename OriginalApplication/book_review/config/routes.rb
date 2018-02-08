Rails.application.routes.draw do
  root 'top#index'
  resources :inquiry, only: [:new, :create]
  resources :user_review, only: [:show]
end
