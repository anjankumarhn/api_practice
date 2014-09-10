Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get 'schools' => 'schools#index'
      get 'teachers' => 'teachers#index'
    end
  end
end
