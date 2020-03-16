Rails.application.routes.draw do
  root 'stocks#index'
  resources :stocks,only:[:index,:show,:create,:destroy] do
    resources :results,only:[:show] do
      resources :comments,only:[:new,:show,:create]
    end
  end
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users, only: [:index]
end
