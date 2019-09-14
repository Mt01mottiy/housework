Rails.application.routes.draw do
  #pageルーティング
    get 'pages/index'
    root 'pages#index'
  #userルーティング
    resources :users
    

  
end
