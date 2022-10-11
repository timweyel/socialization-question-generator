Rails.application.routes.draw do
  root "pages#home"
  get "get_question", to: "questions#show"
  get "all_questions", to: "questions#index"
  # get "questions/:id", to: "questions#index"
  # post "new_question", to: "questions#new"
  resources :questions, only: [:show, :index, :new, :create]
end
