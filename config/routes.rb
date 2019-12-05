Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :movies, only: [:index, :show] do
    resources :showtimes, only: [:index, :show] do
      resources :theaters, only: [:index]
      end
    end
  resources :orders, only: [:show, :create] do
    get 'pass' #, on: :pass
    resources :payments, only: :new
    end
  get 'favorite', to: 'pages#favorite'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmls
