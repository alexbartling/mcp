Mcp::Application.routes.draw do
  get "plates/index"
  get "plates/new"
  get "plates/show"

  get "plates/edit"

  get "plates/update"

  get "plates/destroy"

  root to: 'pages#home'

  get "pages/about"
  match 'contact', to: 'pages#contact'
  get "pages/contact"

  resources :users 	
  resources :sessions, only: [:new, :create, :destroy]
 

  match '/signup',   to: 'users#new'
  match '/signin',   to: 'sessions#new'
  match '/signout',  to: 'sessions#destroy', via: :delete

  


  

end
