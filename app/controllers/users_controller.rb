class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
    @userskills = UserSkill.where(user: @user)
  end
end
