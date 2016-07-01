Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'pages#home'

get 'schedule' => 'pages#schedule'

get 'upload' => 'pages#upload'
get 'admin' => 'pages#admin'

get 'loginerror' => 'pages#loginerror'
get 'accessdenied' => 'pages#accessdenied'

get 'userlist' => 'pages#userlist'



#when signup is clicked, it goes to users_controller new method to make a new user
get 'signup'  => 'users#new' 
resources :users

#when login is clicked, it goes to sessions_controller new method to create a new user
get '/login' => 'sessions#new'

#when login is filled out and pressed, goes to sessions controller create method to login
post 'login' => 'sessions#create'

delete 'logout' => 'sessions#destroy'

end
