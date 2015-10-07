class EndorsementsController < ApplicationController
  before_action :authenticate_user!
  def create
    endorsement = Endorsement.find_by(
      user_id: endorsement_params[:userId],
      user_skill_id: endorsement_params[:userSkillId]
    )
    if endorsement.nil?
      Endorsement.create(user_id: endorsement_params[:userId], user_skill_id: endorsement_params[:userSkillId])
      endorse_button = "Unendorse"
    else
      endorsement.destroy
      endorse_button = "Endorse"
    end

    user_skill = UserSkill.find_by(id: endorsement_params[:userSkillId])
    render json: {skill: user_skill.skill.name, count: user_skill.endorsements.count, endorseButton: endorse_button}
  end

  private

  def endorsement_params
    params.require(:endorsement).permit(:userId, :userSkillId)
  end
end
