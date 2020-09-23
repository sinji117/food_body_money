Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :foods do
    collection do
      get "search"
    end
  end
  root to: "foods#index"
end
