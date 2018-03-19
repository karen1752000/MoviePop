Rails.application.routes.draw do

	root "welcome#index"


    resources :users, only: [ :show, :edit, :update]
   resources :payments,  only: [:new, :create]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 



	 devise_for :users 
  

     resources :users, :only =>[:show]
  
 
 

end
  
  

