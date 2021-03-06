Rails.application.routes.draw do
  
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/' => 'signally#index'
  get '/index' => 'signally#index'
  get '/news' => 'signally#news'
  get '/sports' => 'signally#sports'
  get '/weather' => 'signally#weather'
  get '/about' => 'signally#about'
  get '/business' => 'signally#business'
  get 'entertainment' => 'signally#entertainment'
  post '/particle' => 'signally#particle'
  get '/show' => 'signally#show'
  get '/user/:id' => 'signally#destroy'

  get '/news_landing' => 'bulletins#news_landing'
  get 'sports_landing' => 'bulletins#sports_landing'

  get '/articles/:id' => 'articles#index'

  get '/news' => 'signally#news'
  
end
