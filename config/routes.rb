Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  
  get '/signin' => 'sessions#signin', as: 'signin_session'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: 'logout_session'

  resources :users, only: [:show,:new, :create]
  resources :addresses

  resources :items
  get '/items/:id/item_data', to: 'items#item_data'

  resources :categories  

  get 'stock_report/', to: "categories#stock_report"
  get '/ticket/:address_id', to: "items#ticket", :as => 'ticket'

  post '/add_item/:item_id' => 'items#add_item', :as => 'add_item'
  delete 'item/:id' => "items#destroy"

  get '/auth/facebook/callback', to: 'sessions#create'

end