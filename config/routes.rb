Rails.application.routes.draw do
  root "home#index"
  resources :clubs, only: [:index, :show] do
    member do
      get :status
    end
  end
end