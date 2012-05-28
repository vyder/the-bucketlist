TheBucketlist::Application.routes.draw do
  resources :tasks
  resources :sessions

  match "/home/splash" => 'home#splash', as:"/"
  
  match "sessions" => "sessions"
  match "login" => "sessions#new", as:"/login"
  match "logout" => "sessions#destroy", as:"/logout"

  root :to => 'home#splash'

end
