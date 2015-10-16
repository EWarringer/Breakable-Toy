# require 'rails_helper'
#
# feature 'User views skills', %(
#   'As a User
#   I want to be able to view skills
#   so I can see what skills there are to choose from'
# ) do
#   let(:user) { FactoryGirl.create(:user) }
#
#   scenario 'user views skills page' do
#     sign_in(user)
#     visit skills_path
#     expect(page).to have_content("Select your skills below")
#   end
#
#   scenario 'user clicks category to view'\
#   ' list of skills for that category', js: true do
#     skill = FactoryGirl.create(:skill)
#     sign_in(user)
#     visit skills_path
#     click_link "#{skill.category.name}"
#     sleep 1
#     within('li.accordion-navigation') do
#       expect(page).to have_content(skill.name)
#     end
#   end
# end
