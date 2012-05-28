TheBucketlist::Application.routes.draw do
  resources :tasks, only: ["index", "create", "show", "update", "destroy"]
  resources :sessions

  match "/home/splash" => 'home#splash', as:"/"
  
  match "login" => "sessions#new", as:"/login"
  match "logout" => "sessions#destroy", as:"/logout"

  root :to => 'home#splash'

end
