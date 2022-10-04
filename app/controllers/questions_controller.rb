class QuestionsController < ApplicationController
  def index
    @questions = Question.order("RAND()").first
    # render json: @questions
  end
end
