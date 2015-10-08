require 'rails_helper'

RSpec.describe Endorsement, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:user_skill) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:user_skill_id) }
end
