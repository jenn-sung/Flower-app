Rails.application.routes.draw do
  get '/flowers' => 'flowers#index'
  get '/flowers/:id' => 'flowers#show'
  post '/flowers' => 'flowers#create'
end
