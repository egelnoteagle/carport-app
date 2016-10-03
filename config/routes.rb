Rails.application.routes.draw do
  get '/mygarage' => 'vehicles#index'
  get '/vehicles/:id' => 'vehicles#show'
end
