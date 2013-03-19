Checkm8::Application.routes.draw do

root to:"home#index"

resources :banks, :only => [:index, :new, :create, :show]


end
