require 'rails_helper'

feature 'User adds skills', %(
  'As a User
  I want to be able to add skills
  so I can identify myself with my skills'
) do
  let(:user) { FactoryGirl.create(:user) }
  scenario 'skill <li> element is added to page via'\
  ' ajax without refreshing page', js: true do
    skill = FactoryGirl.create(:skill)
    sign_in(user)
    visit skills_path
    click_link "#{skill.category.name}"
    sleep 1
    click_link "#{skill.name}"
    within('div#ajax-call') do
      expect(page).to have_content(skill.name)
    end
  end
end
