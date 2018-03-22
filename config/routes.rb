Rails.application.routes.draw do

  resources :payments, only:[:new, :create]

  

	root "welcome#index"

	 devise_for :users 
  

     resources :users, :only =>[:show]
  
 
 
end
  
  

