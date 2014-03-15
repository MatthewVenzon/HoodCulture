HoodCulture::Application.routes.draw do


  ##User-related URLs

  root "content#home"
  # session[:return_to] ||= request.referer

  get "login" => 'sessions#new'
  get "logout" => 'sessions#destroy'
  get "authenticate" => 'sessions#create'

  get "/users/new" => 'users#new'
  get "/users/create" => 'users#create'
  get "/users/:user_id/profile" => 'users#profile'

  ##Comment-related URLs

  get "/comments/new" => 'comments#new'
  get "/comments/create" => 'comments#create'

  ##Favorite-related URLs
  get "favorites/new" => 'favorites#new'
  get "favorites/create" => 'favorites#create'
  get "favorites/:user_id/show" => 'favorites#show'


  ##Content-related URLs

  #READ

  get "/about" => "content#about"

  get "/" => "content#home"
  get "/:city_name" => "content#city"
  get "/:city_name/:neighborhood_name" => "content#neighborhood"
  get "/:city_name/:neighborhood_name/:listing_id" => "content#listing"



  # OLD URLs
  get "/show" => "content#show"



end
