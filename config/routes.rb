Rails.application.routes.draw do
  root :to => 'alunos#index'
  get "/questions", to: "questions#index"
end
