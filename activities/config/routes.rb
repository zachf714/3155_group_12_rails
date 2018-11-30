Rails.application.routes.draw do
  get 'welcome/index'

  
  resources :preload do
    resource :users
  end
  
  post "preload/new", to: "preload#create"
  patch 'preload/:id/edit', to: 'preload#update'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
