Rails.application.routes.draw do
  get "questions/random", to: "questions#show", as: "random_question"
  resources :questions
end
