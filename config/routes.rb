Rails.application.routes.draw do
  get 'sessions/new'
  
  get 'pages/index'
  root 'pages#index'
  
  get 'pages/mypage'
  
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :spendings
end
