class QuestionSkill < ActiveRecord::Base
  belongs_to :question
  belongs_to :skill
  validates :question, presence: true
  validates :skill, presence: true
end
