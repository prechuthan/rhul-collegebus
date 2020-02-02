Rails.application.routes.draw do
  match '/stops', to: "stops#index", via: "get"

  root 'welcome#index'
end
