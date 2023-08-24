Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end

  namespace :user do
    resources :products, only: [:index, :show]
  end

  namespace :api do
    resources :products
  end
end
