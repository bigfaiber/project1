Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show] do
  resources :jobs 
  resources :job_apps
  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
