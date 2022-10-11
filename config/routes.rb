Rails.application.routes.draw do
  root "index#index"
  get "questions/:id", to: "questions#index"
  get "get_question", to: "questions#show"
  post "new_question", to: "questions#new"
  resources :questions, only: [:show, :index]
end
