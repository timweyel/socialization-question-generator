class QuestionsController < ApplicationController
  before_action :set_questions
  before_action :set_question, only: [:show]

  def index;end

  def show;end

  private

  def set_questions
    @questions = Question.all
  end

  def set_question
    @questions = @questions.sample
  end
end
