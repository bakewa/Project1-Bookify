Rails.application.routes.draw do
   root :to => "pages#home" 
  
  resources :users, :only => [:new, :create, :index ]

  resources :libraries, :only => [:new, :create]

  resources :authors, :only => [:index]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'

  # get 'users/index'
  # get 'users/new'
  # get 'pages/home'
  # get 'libraries/new'
  # get 'books/show'
  # get 'authors/show'
end
