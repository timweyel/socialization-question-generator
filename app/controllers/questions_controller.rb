class QuestionsController < ApplicationController
  before_action :set_questions
  before_action :set_question, only: [:show, :index]

  def index
    @questions = Question.all
  end

  def show
    byebug
    @question = Question.find(params[:id])
  end

end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.new(params.require(:question))
    if @questions.save
      flash[:notice] = "Question was created successfully."
      redirect_to @questions
    else
      render 'new'
    end
  end

  private

  def set_questions
    @questions = Question.all
  end

  def set_question
    @questions = @questions.sample
  end
