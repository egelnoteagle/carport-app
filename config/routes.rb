Rails.application.routes.draw do
  get '/mygarage' => 'vehicles#index'
  get '/vehicles/:id' => 'vehicles#show'

  get '/vehicles/new' => 'vehicles#new'
  post '/vehicles/' => 'vehicles#create'
end
