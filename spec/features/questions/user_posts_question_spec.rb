require 'rails_helper'

feature 'user asks a question' %(
  'As a user with a question
  I want to fill out a question form and post my question
  So I can receive help from others'
) do
  let(:user) { FactoryGirl.create(:user) }

  before(:each) do
    sign_in(user)
  end

  scenario 'user views new question form' do
    visit new_question_path
    expect(page).to have_content("Question")
    expect(page).to have_content("Description")
    expect(page).to have_content("Required skills")
  end

  # scenario 'user posts questiont to questions board' do
  #   visit new_question_path
  #   fill_in 'question_Question', with: 'What doth life?'
  #   fill_in 'Description', with: 'Well? What doth life?'
  #   save_and_open_page
  #
  #   click_button "Submit"
  #
  #   expect(page).to have_content("Active Unanswered Questions")
  #   expect(page).to have_content("What doth life?")
  #   expect(page).to_not have_content("Well? What doth life?")
  #   expect(page).to have_content(user.name)
  # end

end
