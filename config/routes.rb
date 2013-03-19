Checkm8::Application.routes.draw do
  root to:"home#index"
  resources :users

  resources :banks, :only => [:index, :new, :create, :show]

<<<<<<< HEAD
get "bank/graph" => 'banks#showgraph'
=======
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

>>>>>>> 0aad3323f8cee99c5a35b6b4e9d81bab41eab4e4
end
