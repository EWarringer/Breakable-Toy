require 'rails_helper'

RSpec.describe UserSkill, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:skill) }
  it { should have_many(:endorsements) }
  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:skill) }
end
