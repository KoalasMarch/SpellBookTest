Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end

  namespace :api do
    resources :products
  end
end
