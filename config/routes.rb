Rails.application.routes.draw do
  root to: 'tacos#home'
  resources :tacos, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
