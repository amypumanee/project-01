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

  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :update, :index]
  get '/users/edit' => 'users#edit', :as => :edit_user
  get '/users/:id/events' => 'users#events', :as => 'user_events'
  get '/users/events' => 'users#events'
  get '/users/:id/qrs' => 'users#qrs', :as => 'user_qrs'

  resources :events  #, :only => [:new, :create]
  post '/events/:id/attend' => 'events#attend', :as => 'attend_event'

  resources :locations

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
