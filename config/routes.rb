Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'cocktails#index'

  resources :cocktails, only: [ :index, :new, :create, :show, :destroy ] do
    member do
      resources :doses, only: [ :create ]
    end
  end

  resources :ingredients, only: [ :index, :update, :new, :create, :destroy]


end


