class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users =
    User.where.not("id = ?", current_user.id).order("created_at DESC")
    @conversations =
    Conversation.involving(current_user).order("created_at DESC")
    @user = current_user
  end

  def show
    @user = User.find_by(id: params[:id])
    UserSkill.all.each do |userskill|
      userskill.endorsement_count = userskill.endorsements.count
      userskill.save
    end

    @userskills = UserSkill.where(user: @user).order(endorsement_count: :desc)
  end
end
