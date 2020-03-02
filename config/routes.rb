Rails.application.routes.draw do
  root 'stocks#index'
  resources :spots,only:[:index]
  resources :stocks,only:[:index,:new,:show,:edit,:create]
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, only: [:index]
end
