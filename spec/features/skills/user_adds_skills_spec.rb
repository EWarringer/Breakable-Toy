require 'rails_helper'

feature 'user adds skills to profile - ' %(
  'As a user
  I want to be able to add skills to my profile
  so I can show the public what I know'
) do

  scenario 'user visits profile and sees the skills text' do
    sign_in
    click_link "Profile"
    expect(page).to have_content("skills")
  end

  scenario 'user adds a skill and can see it on their skills list', js: true do
    sign_in
    visit skills_path
    click_link "Other"
    save_and_open_page
  end
end
