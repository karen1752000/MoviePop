Rails.application.routes.draw do
  
  root "welcome#index"

  devise_for :users 

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   resources :users, only: [ :show, :edit, :update]
   resources :payments

   get 'thanks', to: "payments#thanks", as: 'thanks'

end
  
  