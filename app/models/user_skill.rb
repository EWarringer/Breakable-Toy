class UserSkill < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  has_many :endorsements
  validates_presence_of :user_id
  validates_presence_of :skill_id
end
