Rails.application.routes.draw do

  get 'schools/new'
  resources :schools

  root 'schools#new'
  namespace :api do
    namespace :v1 do

      get 'schools' => 'schools#index'
      get 'teachers' => 'teachers#index'
    end
  end
end
