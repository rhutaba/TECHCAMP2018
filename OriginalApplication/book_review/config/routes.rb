Rails.application.routes.draw do
  root 'top#index'
  resources :inquiry, only: [:new, :create]
  resources :books, only: [:index] do
    collection do
      get 'search'
    end

    resources :user_reviews, only: [:show]
  end
end
