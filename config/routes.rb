Rails.application.routes.draw do
  resources :subject_areas
  resources :uploads
  resources :subjects
  devise_for :users
  resources :unis

  resources :unis do
    resources :subject_areas do
  	   resources :subjects do
          resources :uploads
        end
    end
  end
  get '/university/:id/subjects/new' => 'subjects#new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "unis#index"
end
