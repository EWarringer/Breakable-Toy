class Question < ActiveRecord::Base
  validates :body, presence: true
  validates :description, presence: true
  belongs_to :user
  # has_many :skills, through: :question_skills
end
