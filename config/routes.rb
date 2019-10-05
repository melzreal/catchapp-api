Rails.application.routes.draw do
  

  
	post '/api/login', to: 'sessions#create'
    delete '/api/logout', to: 'sessions#destroy'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	 namespace :api do
	    resources :users
    	resources :catchfriends

	 end 
end
