Rails.application.routes.draw do
  root 'home#index'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :journals
  resources :sessions
  resources :bucketlists
  resources :notes
  resources :brainstorms

  resources :users, only: [:show] do
    resources :journals
  end

end
