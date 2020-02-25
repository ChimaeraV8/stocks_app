Rails.application.routes.draw do
  resources :maps
  root 'stocks#index'
  resources :stocks,only:[:index,:new,:show,:edit]
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, only: [:index]
end
