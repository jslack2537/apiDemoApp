Rails.application.routes.draw do
  mount API::Base, at: "/"
  devise_for :users do
    root :to => "user#show"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  resources :users, only: :show
end
