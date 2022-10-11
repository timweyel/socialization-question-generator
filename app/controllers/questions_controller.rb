class QuestionsController < ApplicationController
  # before_action :index
  # before_action :show, only: [:show, :index]

  def show
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

end

  def new
    # @questions = Question.new
  end

  def create
    @question = Question.new(params.require(:question).permit(:question_string))
    @question.save
    # if @question.save
    #   flash[:notice] = "Question was created successfully."
      redirect_to @question
    # else
    #   render 'new'
    # end
  end
  #
  # private

  # def get_questions
  #   @questions = Question.all
  # end
  #
  # def get_question
  #   @questions = @questions.sample
  # end
