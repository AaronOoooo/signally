Rails.application.routes.draw do
  get '/' => 'signally#index'
  get '/sports' => 'signally#sports'
end
