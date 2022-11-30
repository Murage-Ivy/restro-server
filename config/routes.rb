Rails.application.routes.draw do
  post "/signup", to: "users#create"
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy, :update]
  end
end
