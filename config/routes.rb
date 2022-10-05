Rails.application.routes.draw do
  root :to => 'index#index'
  get "/questions", to: "questions#index"
end
