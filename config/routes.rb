Rails.application.routes.draw do
  

  resources :users

	post '/api/login', to: 'sessions#create'
    delete '/api/logout', to: 'sessions#destroy'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	 namespace :api do
	    
    	resources :catchfriends

	 end 
end
