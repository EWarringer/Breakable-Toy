require 'rails_helper'

feature 'authenticated user views profile - ' %(
  'As a user
  I want to view my profile
  so I can view my information'
) do

  scenario 'authenticated user is able to see profile' do
    sign_in
    visit root_path
    expect(page).to have_content("Profile")
  end

  scenario 'authenticated user is able to see profile' do
    sign_in
    visit root_path
    click_link 'Profile'
    expect(page).to have_content
  end

  scenario 'unauthenticated user cannot view profile' do
    visit root_path
    expect(page).to_not have_content("Profile")
  end

end
