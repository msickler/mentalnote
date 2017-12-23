Rails.application.routes.draw do
  root 'home#index'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :sessions
  resources :journals


  resources :users do
    resources :journals, only: [:new, :index, :show]
    resources :notes
    resources :bucketlists
    resources :brainstorms
  end

end
