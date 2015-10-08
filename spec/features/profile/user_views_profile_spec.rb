require 'rails_helper'

feature 'user adds skills to profile | ' %(
  'As a User
  I want to be able to see my profile
  so I can view my information and statistics'
) do
  let(:user) { FactoryGirl.create(:user) }

  scenario 'authenticated user is able to see profile button' do
    sign_in(user)
    visit root_path
    expect(page).to have_content("Profile")
  end

  scenario 'user visits and views profile' do
    sign_in(user)
    click_link "Profile"
    expect(page).to have_content("Email: #{user.email}")
  end

  scenario 'user views their list of'\
  ' user_skills on profile' do
    user_skill = FactoryGirl.create(:user_skill)
    sign_in(user_skill.user)
    click_link "Profile"
    expect(page).to have_content(user_skill.skill.name)
  end
end
