Rails.application.routes.draw do

  resources :users, only: :create do
    resources :favorites, except: [:show, :edit, :update, :new]
  end

  resources :restaurants, only: :index

  resources :sessions, except: [:update, :edit, :show, :index]

  root 'sessions#new'
end
