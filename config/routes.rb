Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resource :stops, only: [:show]

  match '/dashboard', to: "dashboard#index", via: "get"
    #match '/stops', to: "stops#index", via: "get"


end
