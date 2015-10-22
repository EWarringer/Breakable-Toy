require 'rails_helper'

feature 'authenticated user visits links on nav bar' %(
  'As an authenticated user
  I want to use links in the navigation bar
  so I can access other parts of the site'
) do
  let(:user) { FactoryGirl.create(:user) }

  before(:each) do
    sign_in(user)
  end

  scenario 'authenticated user visits home' do
    within('#nav-main') do
      click_link "Home"
    end
    expect(page).to have_css("img[src='http://i.imgur.com/SjSTIWz.png']")
  end

  scenario 'authenticated user visits the "ask something" link' do
    within('#nav-main') do
      click_link "Ask Something"
    end
    expect(page).to have_content("NEW QUESTION")
  end

  scenario 'authenticated user visits the "Browse Questions" link' do
    within('#nav-main') do
      click_link "Browse Questions"
    end
    expect(page).to have_content("Active Unanswered Questions")
  end

  scenario 'authenticated user visits the "Browse Skills" link' do
    within('#nav-main') do
      click_link "Browse Skills"
    end
    expect(page).to have_content("Select your skills below")
  end

  scenario 'authenticated user visits profile with the "Go to Profile" link' do
    within('#nav-main') do
      click_link "Go to Profile"
    end
    expect(page).to have_content(user.email)
  end

  scenario 'authenticated user signs out from "Sign Out" link' do
    within('#nav-main') do
      click_link "Sign Out"
    end
    expect(page).to have_content("Signed out successfully.")
  end

  scenario 'authenticated user visits profile by clicking on name' do
    within('#nav-main') do
      click_link user.name
    end
    expect(page).to have_content(user.email)
  end
end
