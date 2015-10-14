class QuestionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def new
    @question = Question.new
    @questions = Question.all
    @questionskills = QuestionSkill.where(question: @question)
    @categories = Category.all
  end

  def create
    @question = Question.create(
      body: question_params[:body],
      description: question_params[:description],
      user: current_user
    )
    redirect_to @question
  end

  private

  def question_params
    params.require(:question).permit(:body, :description)
  end
end
