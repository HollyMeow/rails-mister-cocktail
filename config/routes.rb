Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  root to: 'cocktails#index'

  resources :cocktails, only: [ :index, :new, :create, :show, :update, :destroy ] do
    member do
      resources :doses, only: [ :create ]
    end
    resources :doses, only: [ :destroy ]
  end

  resources :ingredients, only: [ :index, :new, :create, :destroy]


end


