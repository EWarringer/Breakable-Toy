require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of(:body) }
  it { should validate_presence_of(:description) }
  it { should have_many(:skills).through(:question_skills) }
  it { should belong_to(:user) }
end
