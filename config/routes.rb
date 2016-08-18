Rails.application.routes.draw do

  resources :bought_items
  resources :accounts
  resources :persons
  resources :apartments
  resources :needed_items
  resources :shared_items
  resources :bills
  resources :landlords
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  #Creates static page routes
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root 'static_pages#home'
end
