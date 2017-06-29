Rails.application.routes.draw do
  resources :subject_areas
  resources :uploads
  resources :subjects
  devise_for :users
  resources :unis

  resources :unis do
    resources :subject_areas do
  	   resources :subjects do
            resources :resumes, only: [:index, :new, :create, :destroy]
        end
    end
  end
  get '/university/:id/subjects/new' => 'subjects#new'
  post '/unis/:uni_id/subject_areas/:subject_area_id/subjects/:subject_id/resumes/new' => 'resumes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "unis#index"
end
