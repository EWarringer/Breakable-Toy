class UserSkill < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill
  has_many :endorsements
  validates :user, presence: true
  validates :skill, presence: true
end
