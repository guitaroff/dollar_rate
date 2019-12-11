Rails.application.routes.draw do
  resources :rates, only: :index

  root to: 'rates#index'
end
