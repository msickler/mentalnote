Rails.application.routes.draw do
  root 'home#index'
  resources :users

  resources :users, only: [:show] do
    resources :journals
  end

end
