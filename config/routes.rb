Rails.application.routes.draw do
  devise_for :users
  resources :unis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "unis#index"
end
