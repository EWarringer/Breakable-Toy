class Endorsement < ActiveRecord::Base
  attr_accessor :endorsement_count
  belongs_to :user
  belongs_to :user_skill
  validates :user_id, presence: true
  validates :user_skill_id, presence: true
end
