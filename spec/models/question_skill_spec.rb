require "rails_helper"

RSpec.describe QuestionSkill, type: :model do
  it { should validate_presence_of(:question) }
  it { should validate_presence_of(:skill) }
  it { should belong_to(:question) }
  it { should belong_to(:skill) }
end
