Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get  'pages/show'
  resources :reviews
  resources :users
end
