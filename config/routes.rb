Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spots, only: [:index, :show, :new, :create, :edit, :update] do
    # resources :doses, only: [:new, :create] // pour faire plaisir au rake
    resources :bookings, only: [:new, :create, :show, :edit, :update]
  end
end
