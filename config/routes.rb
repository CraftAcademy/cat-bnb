Rails.application.routes.draw do
  devise_for :users

  root controller: :listings, action: :index
  resources :profiles, only: [:new, :create]
  resources :listings, only: [:new, :show, :create] do
    resources :offers
  end
end