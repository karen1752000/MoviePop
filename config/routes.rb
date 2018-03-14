Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, :only =>[:show]
resources :movies, :only =>[:show]
resources :showtimes
root :to =>"users#show"
root :to =>"movies#show"
end

# devise_scope :user do
#     authenticated :user do
#       root :to => "users#show"
#     end

#     unauthenticated do
#       root :to => "devise/sessions#new"
#     end
#   end