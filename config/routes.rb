Rails.application.routes.draw do
  root to: "index#index"
  # get "all_questions", to: "questions#index"
  # get "get_question", to: "questions#show"
  get "questions/random", to: "questions#show", as: "random_question"
  get "questions/:id/edit", to: "questions#edit", as: "edit_article"
  patch "questions/:id", to: "questions#update"
  # post "new_question", to: "questions#new"
  resources :questions, only: [:show, :index, :new, :create, :edit, :update]
end
