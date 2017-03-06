Rails.application.routes.draw do

  resources :users, only: :create do
  end
  
  resources :favorites, except: [:show, :edit, :update, :new]

  resources :restaurants, only: :index

  resources :sessions, except: [:update, :edit, :show, :index]

  root 'sessions#new'
end
