Rails.application.routes.draw do

  root to: 'store#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, :only =>[:show]
resources :movies, :only =>[:show]
resources :showtimes
root :to =>"users#show"
root :to =>"movies#show"
end
=======
  
  root "welcome#index"

<<<<<<< HEAD
  resources :users, :only =>[:show]
=======
>>>>>>> c436af60f0abaaceea800d81079b5d63b6b5dee0

  devise_for :users 


#     unauthenticated do
#       root :to => "devise/sessions#new"
#     end
#   end

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :users
end
  
  

