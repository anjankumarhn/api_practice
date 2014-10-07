Rails.application.routes.draw do

  get 'schools/new'
  resources :schools
  resources :teachers

  root 'schools#new'
  namespace :api do
    namespace :v1 do

      get 'schools' => 'schools#index'
      get 'teachers' => 'teachers#index'
      get 'schools/:id' => 'schools#show'
      get 'schools/:id/teachers' => 'teachers#index'
      get 'sign_in' => 'sessions#create'
    end
  end
end
