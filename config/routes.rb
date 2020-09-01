Rails.application.routes.draw do
  resources :orders do
    resources :items
  end
  root to:"clients#index"
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
