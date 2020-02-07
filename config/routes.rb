Rails.application.routes.draw do
  devise_for :users

  # / landing page
  root 'welcome#index'

  # /stops url
  resources :stops, only: [:index]

  # /dashboard url
  resources :dashboard, only: [:index]

  # /dashboard/stops resources url
  namespace :dashboard do
    resources :buses
    resources :stops
    resources :timetables
  end

end
