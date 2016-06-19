Rails.application.routes.draw do
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/' => 'signally#index'
  get '/index' => 'signally#index'
  get '/sports' => 'signally#sports'
  get '/weather' => 'signally#weather'
  get '/about' => 'signally#about'


 

end
