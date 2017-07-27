Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#show", page: "home"
  get '/pages/:page', to: "pages#show"

  resources :users

  resources :locations do
      resources :reviews, shallow: true 
  end

  resources :images

  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'
end
