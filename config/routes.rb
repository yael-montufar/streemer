Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show] do
    get :stream, on: :member
  end
  resources :performers, only: [:show] do
    resources :reviews, only: [:create]
  end

  resources :performer_profiles, only: [:new, :create]
end
