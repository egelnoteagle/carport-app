Rails.application.routes.draw do
  get '/mygarage' => 'vehicles#index'

  get '/vehicles/new' => 'vehicles#new'
  post '/vehicles' => 'vehicles#create'

  get '/vehicles/:id' => 'vehicles#show'

  get '/vehicles/:id/edit' => 'vehicles#edit'
  patch '/vehicles/:id' => 'vehicles#update'

  delete '/vehicles/:id' => 'vehicles#destroy'
end
