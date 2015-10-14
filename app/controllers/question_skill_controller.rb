class QuestionSkillsController < ActiveRecord::Base
  before_action :authenticate_user!
  def create
    question_skill = QuestionSkill.find_or_create_by(
      question_id: question_skill_params[:questionId],
      skill_id: question_skill_params[:skillId]
    )
    render json: question_skill.skill
  end

  private

  def question_skill_params
    params.require(:questionSkill).permit(:questionId, :skillId)
  end
end
