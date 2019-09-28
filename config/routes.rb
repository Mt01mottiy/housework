Rails.application.routes.draw do
  get 'works/new'
  get 'calendars/index'
  get 'homes/new'
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
  #calendarページ
  resources :calendars
end
