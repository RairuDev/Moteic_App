Rails.application.routes.draw do
  root 'homes#index'
  # resources :users
  devise_for :users
  # devise_for :users, controllers: {
  #   registrations: 'users/registrations',
  #   sessions: 'users/sessions'
  # }
end
