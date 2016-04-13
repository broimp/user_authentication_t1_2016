Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users_controller/new'

  get 'static_pages/about'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create], path_names: { new: 'signup'}
  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'

  resources :cars

  root 'cars#index'

  get 'about' => 'static_pages#about'


end
