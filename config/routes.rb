Rails.application.routes.draw do
  root 'index#index'
  get 'questions/:id', to: 'questions#index'
  resources :questions, only: [:show, :index]
end
