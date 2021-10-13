Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get '/about',to: 'homes#about'
  get '/search', to: 'searches#search'
  resources :notifications, only: :index
  resources :customers, only: [:show, :edit, :update]
  resources :pets do
    resource :favorites, only: [:create, :destroy]
    resources :pet_comments, only: [:create, :destroy]
  end

end
