Rails.application.routes.draw do
  root :to => "pages#home" 

  # get '/works' => "works#form"
  # get '/works/info' => "works#info"
  post '/works/new' => "works#new"
  post '/authors' => "authors#new"

  get '/login' => "session#new"
  post '/login' => "session#create"
  delete '/login' => "session#destroy"

  resources :works
  resources :authors
  resources :users, :only => [:index, :new, :create]
  end 

  
