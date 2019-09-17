Rails.application.routes.draw do
  get 'sessions/new'
  #pageルーティング
    get 'pages/index'
    root 'pages#index'
  #userルーティング
    resources :users
  #session
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to:'sessions#destroy'
  
end
