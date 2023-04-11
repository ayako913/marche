Rails.application.routes.draw do
  devise_for :users
  root to: 'marches#index'
  resources :marches, only: [:index] do
    collection do
      get 'search'
    end
  end
  resources :vegetables, only: [:new, :create, :edit, :update, :destroy, :show] do
    resources :vorders, only: [:index, :create]
  end
  resources :eats, only: [:new, :create, :edit, :update, :destroy, :show] do
    resources :eorders, only: [:index, :create]
  end
  resources :users, only: :show
end
