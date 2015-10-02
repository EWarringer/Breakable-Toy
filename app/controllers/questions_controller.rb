class QuestionsController < ApplicationController

  def index
    @categories = Category.all
    @skills = Skill.all
  end
end
