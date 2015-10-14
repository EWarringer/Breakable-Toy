require "rails_helper"

RSpec.describe Skill, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:users).through(:user_skills) }
  it { should have_many(:user_skills) }
  it { should have_many(:questions).through(:question_skills) }
  it { should have_many(:question_skills) }
  it { should belong_to(:category) }
end
