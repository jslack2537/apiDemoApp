Rails.application.routes.draw do
  devise_for :users do
    root :to => "user#show"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :users, only: :show
  namespace :api do
    namespace :v1 do
    resources :users
    resources :logins
    end
  end
end
