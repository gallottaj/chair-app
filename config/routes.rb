Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/chairs' => 'chairs#index'
    get '/chair/:id' => 'chairs#show'
    post '/chair' => 'chairs#create'
    patch '/chair/:id' => 'chairs#update'
    delete '/chair/:id' => 'chairs#delete'
  end
end
