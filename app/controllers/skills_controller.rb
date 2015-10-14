class SkillsController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.all
    @skills = Skill.all
    @userskills = UserSkill.where(user: current_user)
  end
end
