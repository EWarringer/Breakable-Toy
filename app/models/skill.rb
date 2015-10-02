class Skill < ActiveRecord::Base
  validates_presence_of :name
  has_many :users, through: :user_skills
  belongs_to :category
end
