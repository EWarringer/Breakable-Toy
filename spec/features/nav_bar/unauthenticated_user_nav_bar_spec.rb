require 'rails_helper'

feature 'unauthenticated user visits links on nav bar' %(
  'As an unauthenticated user
  I want to use links in the navigation bar
  so I can access other parts of the site'
) do

  scenario 'unauthenticated user visits sign in page from nav bar' do
    visit root_path
    within('#nav-main') do
      click_link "Sign in"
    end
    expect(page).to have_content("Log in")
  end

  scenario 'unauthenticated user visits sign up page from nav bar' do
    visit root_path
    within('#sign-up-nav') do
      click_link "Sign up"
    end
    expect(page).to have_content("Password Confirmation")
  end

end
