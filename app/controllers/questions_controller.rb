class QuestionsController < ApplicationController

  before_action :show, only: [:show, :index, :new, :create]

  def show
    if params[:id].nil?
      @question = Question.order(Arel.sql('RAND()')).first
    else
      @question = Question.find(params[:id])
    end
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(params.require(:question_string).permit(:question_string))
    if @question.save
      flash[:notice] = "Question was created successfully."
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(params.require(:question).permit(:id, :question_string))
      flash[:notice] = "Question was updated successfully."
      redirect_to @question
    else
      render 'edit'
    end
  end
  # def update
  #   raise params.inspect
  # end
end
