Rails.application.routes.draw do
  get '/hedgehogs' => 'hedgehogs#index'
  get '/hedgehogs/:id' => 'hedgehogs#show'
  post '/hedgehogs' => 'hedgehogs#create'
  patch '/hedgehogs/:id' => 'hedgehogs#update'
  delete '/hedgehogs/:id' => 'hedgehogs#destroy'
end
