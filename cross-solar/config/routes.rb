Rails.application.routes.draw do
  defaults format: :json do
    resources :panels, only: [:create]
    resources :one_hour_electricities, only: [:index, :create]
    resources :one_day_electricities, only: [:index]
  end
end
