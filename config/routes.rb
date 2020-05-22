Rails.application.routes.draw do
  resources :itineraries
  resources :items
  namespace :home do
    get :index
  end

  root to: 'home#index'
end
