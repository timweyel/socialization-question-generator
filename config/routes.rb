Rails.application.routes.draw do
  root to: "index#index"
  get "all_questions", to: "questions#index"
  # get "get_question", to: "questions#show"
  get "questions/random", to: "questions#show", as: "random_question"
  # get "questions/:id/edit", to: "questions#edit", as: "edit_question"
  patch "questions/:id/edit", to: "questions#edit"
  post "new_question", to: "questions#new"
  resources :questions, only: [:show, :index, :new, :create, :edit, :update]
end
