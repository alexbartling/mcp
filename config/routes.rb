Mcp::Application.routes.draw do

  get 'plates/scraper'
  
  get "tickets/index"

  get "tickets/new"

  get "tickets/destroy"

  get "plates/index"
  
  root to: 'pages#home'

  get   'pages/about'
  match 'contact', to: 'pages#contact'
  get   'pages/contact'



  resources :tickets
  resources :plates
  resources :users
  resources :sessions


  match '/signup',   to: 'users#new'
  match '/signin',   to: 'sessions#new'
  match '/signout',  to: 'sessions#destroy', via: :delete


  


  

end
