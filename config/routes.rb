Mcp::Application.routes.draw do
   get "citations/result"

  # get "tickets/index"

  # get "tickets/new"

  # get "tickets/create"

  # get "tickets/destroy"

  get "plates/index"
  
  root to: 'pages#home'

  get   'pages/about'
  match 'contact', to: 'pages#contact'
  get   'pages/contact'



  resources :tickets
  resources :plates
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
 

  match '/signup',   to: 'users#new'
  match '/signin',   to: 'sessions#new'
  match '/signout',  to: 'sessions#destroy', via: :delete


  


  

end
