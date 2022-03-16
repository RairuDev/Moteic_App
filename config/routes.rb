Rails.application.routes.draw do
  root 'homes#index'
  resources :users
  devise_for :users
end
