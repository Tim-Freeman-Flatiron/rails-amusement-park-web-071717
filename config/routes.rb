Rails.application.routes.draw do
	resources :users, :attractions, :rides

	root 'welcome#index'
	get '/signin', to: 'sessions#new'
	post '/signin', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'
	get 'rides/:id/take_ride', to: 'rides#ride', as: 'take_ride'

end