Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root to: 'home#index'
  get :dashboard, to: 'home#dashboard'

  resources :payments do
    resources :transfers
  end

  resources :groups do
  	member do
      get :new_user
      post :add_user
      post :remove_user
    end
  end
end
