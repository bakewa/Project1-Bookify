Rails.application.routes.draw do
   root :to => "pages#home" 
  
  resources :users, :only => [:new, :create, :index ]

  resources :libraries, :only => [:new, :create]

  resources :authors, :only => [:index]

  get '/login' => "session#new"
  post '/login' => "session#create"
  delete '/login' => "session#destroy"
end
