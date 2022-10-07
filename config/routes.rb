Rails.application.routes.draw do
  root 'index#index'
  get 'questions/:id', to: 'questions#index'
  get "/get_question", to: "questions#show"
  resources :questions, only: [:show, :index]
end
