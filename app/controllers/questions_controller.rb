class QuestionsController < ApplicationController
  before_action :authenticate_user!
  def new
    @question = Question.new
    @questions = Question.all
    @questionskills = QuestionSkill.where(question: @question)
    @categories = Category.all
  end
end
