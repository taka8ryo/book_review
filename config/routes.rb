Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  devise_for :users
  root 'pages#index'
  get  'pages/show'
end
