Rails.application.routes.draw do
  root to: "index#index"
  # get "all_questions", to: "questions#index"
  # get "get_question", to: "questions#show"
  # get "questions/:id", to: "questions#index"
  # post "new_question", to: "questions#new"
  resources :questions, only: [:show, :index, :new, :create]
end
