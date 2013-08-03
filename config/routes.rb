Memelioniare::Application.routes.draw do

  get "home/index"

  root :to => 'game#index'
end
