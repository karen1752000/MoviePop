Rails.application.routes.draw do

	root "welcome#index"

	 devise_for :users 
  

<<<<<<< HEAD
   resources :users, only: [ :show, :edit, :update]
   resources :payments

   get 'thanks', to: "payments#thanks", as: 'thanks'

=======
     resources :users, :only =>[:show]
  
 
 
>>>>>>> f2ced973a9fed74d7ea5e9f89b99e98f6223f696
end
  
  

