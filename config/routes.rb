# require_relative "../app/api/marker"

Marker::Application.routes.draw do
  mount API => '/'


  namespace :admin do
    resources :assessments
  end

  root :to => 'home#index'
end
