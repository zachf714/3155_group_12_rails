Rails.application.routes.draw do
  get 'auth/:provider/callback' , to: 'sessions#create'
  get 'auth/failure' , to: redirect('/')
  get 'signout' , to: 'sessions#destroy'
  
  resources :sessions, only: [:create, :destroy]
  get 'welcome/index'

  
  resources :preload do
    resource :users
  end
  
  post "preload/new", to: "preload#create"
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
