class Endorsement < ActiveRecord::Base
  belongs_to :user
  belongs_to :user_skill
  validates_presence_of :user_id
  validates_presence_of :user_skill_id
end
