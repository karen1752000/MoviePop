Rails.application.routes.draw do
  
  root "welcome#index"
<<<<<<< HEAD
  devise_for :users 
=======
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :users, :only =>[:show]

  resources :movies, :only =>[:show]

  resources :showtimes
>>>>>>> 7bcdb6c1792c9c710d83a71544b9484c0210500a

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # resources :users, :only =>[:show]
    resources :users
    resources :movies
end
  