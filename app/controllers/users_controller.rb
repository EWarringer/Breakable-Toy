class UsersController < ApplicationController
  def show
    @userskills = UserSkill.where(user: current_user)
  end
end
