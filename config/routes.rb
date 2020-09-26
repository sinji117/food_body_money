Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :foods do
    resources :comments, only: :create
    collection do
      get "search"
    end
  end
  root to: "foods#index"
end
