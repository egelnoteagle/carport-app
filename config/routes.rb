Rails.application.routes.draw do
  get '/' => 'sessions#new'

  get '/mygarage' => 'vehicles#index'
  get '/vehicles/new' => 'vehicles#new'
  post '/vehicles' => 'vehicles#create'
  get '/vehicles/:id' => 'vehicles#show'
  get '/vehicles/:id/edit' => 'vehicles#edit'
  patch '/vehicles/:id' => 'vehicles#update'
  delete '/vehicles/:id' => 'vehicles#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/mileages' => 'mileages#create' 

  get '/recalls' => 'recalls#index'
end
