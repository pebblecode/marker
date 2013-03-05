# require_relative "../app/api/marker"

Marker::Application.routes.draw do
  mount API => '/'


  namespace :admin do
    resources :assessments
    resources :students
  end

  root :to => 'home#index'
end
