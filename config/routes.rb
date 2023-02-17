Rails.application.routes.draw do
  devise_for :users
  root to: 'marches#index'
  resources :marches, only: [:index] do
    collection do
      get 'search'
    end
  end
  resources :vegetables, only: [:new, :create, :edit, :update, :destroy, :show]
  resources :users, only: :show
end
