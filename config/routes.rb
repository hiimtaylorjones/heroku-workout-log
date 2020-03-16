Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'workouts#index'
  resources :movements

  namespace :api do 
    namespace :v1 do 
      resources :workouts
    end
  end

  # get '*frontend_path', to: 'ember#index'
  get '/ember', to: 'ember#index'
end
