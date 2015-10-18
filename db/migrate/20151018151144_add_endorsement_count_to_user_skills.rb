class AddEndorsementCountToUserSkills < ActiveRecord::Migration
  def change
    add_column :user_skills, :endorsement_count, :integer, default: 0
  end
end
