Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

resources :places
  resources :entries

  # Defines the root path route ("/")

#resources :places, path: '/place'
#resources :entries, path: '/entries'


   get("/", { :controller => "places", :action => "index" })
  

end
