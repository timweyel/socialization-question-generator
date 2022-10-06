class QuestionsController < ApplicationController
  def index
    @questions = Question.order("RAND()").first
    # @questions = Question.all
  end

  def show
    @questions = Question.find(params[:id])
  end
end
