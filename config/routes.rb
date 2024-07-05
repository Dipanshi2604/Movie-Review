Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  root "movies#index"
  # namespace :admin do
  #   root 'movies#index'
  # end //for this access through /admin and view and controller must be in admin folder and controller class must be inside module

  resources :movies

  # get "movies" => "movies#index"
  # get "movies/new" => "movies#new", as:"new_movie"
  # get "movies/:id" => "movies#show", as:"movie"
  # get "movies/:id/edit" => "movies#edit", as:"edit_movie"
  # patch "movies/:id" => "movies#update"
  # post "movies" => "movies#create"
  # delete "movies/:id" => "movies#destroy"
end
