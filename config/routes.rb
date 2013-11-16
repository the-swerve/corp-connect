Corpconnect::Application.routes.draw do

  resources :opportunities


  devise_for :users

  get "home/show"

	root :to => 'home#show'


end
