Rails.application.routes.draw do
  namespace :home do
    get :index
  end

  root to: 'home#index'
end
