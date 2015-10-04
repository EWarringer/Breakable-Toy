class UserSkill < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  validates_presence_of :user_id
  validates_presence_of :skill_id
end
