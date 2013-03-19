Checkm8::Application.routes.draw do
  root to:"home#index"
  resources :users
  resources :banks, :only => [:index, :new, :create, :show]
  resources :transactions, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
