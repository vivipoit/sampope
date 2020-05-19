Rails.application.routes.draw do
  resources :items
  namespace :home do
    get :index
  end

  root to: 'home#index'
end
