Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show, :list, :new, :create] do
    resource :comments, only: :create
    get :stream, on: :member
  end
  resources :performers, only: [:show] do
    resources :reviews, only: [:create]
  end

  resources :performer_profiles, only: [:new, :create]

  resource :map, only: :show

end
