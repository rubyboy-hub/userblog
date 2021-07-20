Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, only: [:show, :create, :update, :destroy, :index]
    get 'typehead/:input' => 'users#typehead'
  end
end
