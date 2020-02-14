Rails.application.routes.draw do
  root 'stocks#index'
  resources :stocks,only:[:index,:new,:show,:edit]
  devise_for :users
  resources :users, only: [:index]
end
