class UserSkillsController < ApplicationController
  before_action :authenticate_user!
  def create
    user_skill = UserSkill.find_or_create_by(
      user_id: user_skill_params[:userId],
      skill_id: user_skill_params[:skillId]
    )

    render json: user_skill.skill
  end

  private

  def user_skill_params
    params.require(:userSkill).permit(:userId, :skillId)
  end
end
