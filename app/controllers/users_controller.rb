class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @userskills = UserSkill.where(user: @user)
  end
end
