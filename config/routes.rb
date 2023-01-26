Rails.application.routes.draw do
  root :to => "pages#home" 

  # get '/libraries' => 'libraries#form'
  # get '/libraries/new' => 'libraries#new'
  get '/books' => 'books#form'
  get '/books/info' => 'books#info'
  
  get '/login' => "session#new"
  post '/login' => "session#create"
  delete '/login' => "session#destroy"

  resources :users, :only => [:index, :new, :create]
  resources :libraries, :only => [:new, :create, :index] 
  resources :books, :only => [:form, :info]
  
  
end 
