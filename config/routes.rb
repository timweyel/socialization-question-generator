Rails.application.routes.draw do
  root 'index#index'
  get 'questions', to: 'questions#index'
  resources :questions, only: [:show]
end
