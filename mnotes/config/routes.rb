Rails.application.routes.draw do
  root 'home#index'
  resources :users
  resources :journals
  resources :sessions
  resources :bucketlists

  resources :users, only: [:show] do
    resources :journals
  end

end
