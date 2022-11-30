Rails.application.routes.draw do
  post "/signup", to: "users#create"
  get "me", to: "users#show"
  resources :restaurants, only: [:index, :show] do
    resources :reviews, only: [:create, :destroy, :update, :index]
  end
end
