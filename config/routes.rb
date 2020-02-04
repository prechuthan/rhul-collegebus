Rails.application.routes.draw do
  devise_for :users
  match '/dashboard', to: "dashboard#index", via: "get"

  match '/stops', to: "stops#index", via: "get"

  root 'welcome#index'
end
