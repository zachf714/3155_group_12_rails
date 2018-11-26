Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'welcome/index'

  
  resources :preload do
    resource :users
  end
  
  post "preload/new", to: "preload#create"
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
