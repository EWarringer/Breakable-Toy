class Skill < ActiveRecord::Base
  validates_presence_of :name
  has_many :users, through: :user_skills
  has_many :endorsements, through: :user_skills
  # has_many :questions, through: :question_skills
  belongs_to :category
end
