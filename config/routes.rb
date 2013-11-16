Corpconnect::Application.routes.draw do

  resources :opportunities


  devise_for :users,
		:controllers => {:sessions => "users/sessions"}

  get "home/show"

	root :to => 'home#show'


end
