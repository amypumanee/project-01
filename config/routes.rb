# == Route Map
#
#          Prefix Verb   URI Pattern                Controller#Action
# locations_index GET    /locations/index(.:format) locations#index
#   locations_new GET    /locations/new(.:format)   locations#new
#  locations_edit GET    /locations/edit(.:format)  locations#edit
#  locations_show GET    /locations/show(.:format)  locations#show
#            root GET    /                          pages#home
#           users POST   /users(.:format)           users#create
#        new_user GET    /users/new(.:format)       users#new
#          events GET    /events(.:format)          events#index
#                 POST   /events(.:format)          events#create
#       new_event GET    /events/new(.:format)      events#new
#      edit_event GET    /events/:id/edit(.:format) events#edit
#           event GET    /events/:id(.:format)      events#show
#                 PATCH  /events/:id(.:format)      events#update
#                 PUT    /events/:id(.:format)      events#update
#                 DELETE /events/:id(.:format)      events#destroy

Rails.application.routes.draw do

  get 'users/new'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :events #, :only => [:new, :create]
  resources :locations
end
