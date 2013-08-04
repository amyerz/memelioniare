Memelioniare::Application.routes.draw do

  get "home/index"
 
  resources :game, :only =>[:show]

  root :to => 'home#index'
end
