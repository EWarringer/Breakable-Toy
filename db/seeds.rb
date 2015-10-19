# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dev = Category.create!(name: "Web developer, IT & Software")
mobile = Category.create!(name: "Mobile Phones & Computing")
writing = Category.create!(name: "Writing & Content")
design_media_and_architecture = Category.create!(name: "Design,"\
" Media & Architecture")
data_entry = Category.create!(name: "Data Entry & Admin")
engineering_and_science = Category.create!(name: "Engineering"\
" & Science")
manufacturing = Category.create!(name: "Product Sourcing"\
" & Manufacturing")
sales = Category.create!(name: "Sales & Marketing")
business_legal = Category.create!(name: "Business,"\
" Accounting, Human Resources & Legal")
language = Category.create!(name: "Translation & Languages")
handy_work = Category.create!(name: "Local Jobs & Services")
other = Category.create!(name: "Other")

User.create(
  email: "erikwarringer@gmail.com",
  first_name: "Erik",
  last_name: "Warringer",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/cAdhmda.jpg",
  industry: "Computer Software"
)
User.create!(
  email: "danchandler@gmail.com",
  first_name: "Dan",
  last_name: "Chandler",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/7jbQLX4.png",
  industry: "Technology Sales"
)
User.create(
  email: "jefffrasier@gmail.com",
  first_name: "Jeff",
  last_name: "Smith",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/KG3GdAi.jpg"
)
User.create(
  email: "anthonygiordano@gmail.com",
  first_name: "Anthony",
  last_name: "Giordano",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/nRfZqSU.jpg"
)
User.create!(
  email: "heatherswanson@gmail.com",
  first_name: "Heather",
  last_name: "Swanson",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/9ckt7H7.png"
)
User.create!(
  email: "alissasherlock@gmail.com",
  first_name: "Alissa",
  last_name: "Sherlock",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/u3S3h5Q.png"
)
User.create!(
  email: "lancejohnson@gmail.com",
  first_name: "Lance",
  last_name: "Johnson",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/ezQCDBy.png"
)
User.create!(
  email: "andreasanders@gmail.com",
  first_name: "andrea",
  last_name: "sanders",
  password: "something",
  password_confirmation: "something",
  photo: "http://i.imgur.com/xYWdLCp.png"
)
SkillSeed.dev_skills.each do |skill|
  Skill.create!(name: skill, category: dev)
end
SkillSeed.mobile_skills.each do |skill|
  Skill.create!(name: skill, category: mobile)
end
SkillSeed.writing_skills.each do |skill|
  Skill.create!(name: skill, category: writing)
end
SkillSeed.design_media_and_architecture_skills.each do |skill|
  Skill.create!(name: skill,
  category: design_media_and_architecture)
end
SkillSeed.data_entry_skills.each do |skill|
  Skill.create!(name: skill, category: data_entry)
end
SkillSeed.engineering_and_science_skills.each do |skill|
  Skill.create!(name: skill, category: engineering_and_science)
end
SkillSeed.manufacturing_skills.each do |skill|
  Skill.create!(name: skill, category: manufacturing)
end
SkillSeed.sales_skills.each do |skill|
  Skill.create!(name: skill, category: sales)
end
SkillSeed.business_legal_skills.each do |skill|
  Skill.create!(name: skill, category: business_legal)
end
SkillSeed.language_skills.each do |skill|
  Skill.create!(name: skill, category: language)
end
SkillSeed.handy_work_skills.each do |skill|
  Skill.create!(name: skill, category: handy_work)
end
SkillSeed.other_skills.each do |skill|
  Skill.create!(name: skill, category: other)
end
UserSkill.create(user_id: 1, skill_id: 7) # AJAX
UserSkill.create(user_id: 1, skill_id: 79) # eCommerce
UserSkill.create(user_id: 1, skill_id: 138) # Javascript
UserSkill.create(user_id: 1, skill_id: 222) # Ruby on Rails
UserSkill.create(user_id: 1, skill_id: 251) # SQL
UserSkill.create(user_id: 1, skill_id: 497) # Excel
UserSkill.create(user_id: 1, skill_id: 501) # Microsoft Office
UserSkill.create(user_id: 1, skill_id: 602) # eBay
UserSkill.create(user_id: 1, skill_id: 604) # Etsy
UserSkill.create(user_id: 1, skill_id: 595) # Affiliate Marketing
UserSkill.create(user_id: 1, skill_id: 605) # Facebook Marketing
UserSkill.create(user_id: 1, skill_id: 836) # History
UserSkill.create(user_id: 1, skill_id: 644) # Payroll
UserSkill.create(user_id: 1, skill_id: 177) # node.js
UserSkill.create(user_id: 1, skill_id: 120) # Heroku
UserSkill.create(user_id: 2, skill_id: 7)
UserSkill.create(user_id: 2, skill_id: 138)
UserSkill.create(user_id: 2, skill_id: 222)
UserSkill.create(user_id: 2, skill_id: 251)
UserSkill.create(user_id: 2, skill_id: 497)
UserSkill.create(user_id: 2, skill_id: 501)
UserSkill.create(user_id: 2, skill_id: 602)
UserSkill.create(user_id: 2, skill_id: 604)
UserSkill.create(user_id: 2, skill_id: 595)
UserSkill.create(user_id: 2, skill_id: 605)
UserSkill.create(user_id: 2, skill_id: 836)
UserSkill.create(user_id: 2, skill_id: 644)
UserSkill.create(user_id: 2, skill_id: 177)
UserSkill.create(user_id: 2, skill_id: 120)
Endorsement.create(user_skill_id: 1, user_id: 2)
Endorsement.create(user_skill_id: 1, user_id: 3)
Endorsement.create(user_skill_id: 1, user_id: 4)
Endorsement.create(user_skill_id: 1, user_id: 5)
Endorsement.create(user_skill_id: 1, user_id: 6)
Endorsement.create(user_skill_id: 2, user_id: 2)
Endorsement.create(user_skill_id: 2, user_id: 3)
Endorsement.create(user_skill_id: 3, user_id: 2)
Endorsement.create(user_skill_id: 3, user_id: 3)
Endorsement.create(user_skill_id: 3, user_id: 4)
Endorsement.create(user_skill_id: 3, user_id: 5)
Endorsement.create(user_skill_id: 4, user_id: 2)
Endorsement.create(user_skill_id: 4, user_id: 3)
Endorsement.create(user_skill_id: 4, user_id: 4)
Endorsement.create(user_skill_id: 4, user_id: 5)
Endorsement.create(user_skill_id: 4, user_id: 6)
Endorsement.create(user_skill_id: 4, user_id: 7)
Endorsement.create(user_skill_id: 5, user_id: 2)
Endorsement.create(user_skill_id: 5, user_id: 3)
Endorsement.create(user_skill_id: 5, user_id: 4)
Endorsement.create(user_skill_id: 5, user_id: 5)
Endorsement.create(user_skill_id: 5, user_id: 6)
Endorsement.create(user_skill_id: 5, user_id: 7)
Endorsement.create(user_skill_id: 6, user_id: 2)
Endorsement.create(user_skill_id: 6, user_id: 3)
Endorsement.create(user_skill_id: 6, user_id: 4)
Endorsement.create(user_skill_id: 6, user_id: 5)
Endorsement.create(user_skill_id: 6, user_id: 6)
Endorsement.create(user_skill_id: 7, user_id: 2)
Endorsement.create(user_skill_id: 7, user_id: 3)
Endorsement.create(user_skill_id: 7, user_id: 4)
Endorsement.create(user_skill_id: 8, user_id: 2)
Endorsement.create(user_skill_id: 9, user_id: 2)
Endorsement.create(user_skill_id: 9, user_id: 3)
Endorsement.create(user_skill_id: 9, user_id: 4)
Endorsement.create(user_skill_id: 9, user_id: 5)
Endorsement.create(user_skill_id: 10, user_id: 2)
Endorsement.create(user_skill_id: 11, user_id: 2)
Endorsement.create(user_skill_id: 11, user_id: 3)
Endorsement.create(user_skill_id: 12, user_id: 2)
Endorsement.create(user_skill_id: 12, user_id: 3)
Endorsement.create(user_skill_id: 12, user_id: 4)
Endorsement.create(user_skill_id: 12, user_id: 5)
Endorsement.create(user_skill_id: 12, user_id: 6)
Endorsement.create(user_skill_id: 13, user_id: 2)
Endorsement.create(user_skill_id: 13, user_id: 3)
Endorsement.create(user_skill_id: 13, user_id: 4)
Endorsement.create(user_skill_id: 13, user_id: 5)
Endorsement.create(user_skill_id: 15, user_id: 2)
Endorsement.create(user_skill_id: 15, user_id: 3)
Endorsement.create(user_skill_id: 16, user_id: 3)
Endorsement.create(user_skill_id: 16, user_id: 4)
Endorsement.create(user_skill_id: 17, user_id: 3)
Endorsement.create(user_skill_id: 17, user_id: 4)
Endorsement.create(user_skill_id: 17, user_id: 5)
Endorsement.create(user_skill_id: 17, user_id: 6)
Endorsement.create(user_skill_id: 17, user_id: 7)
Endorsement.create(user_skill_id: 18, user_id: 3)
Endorsement.create(user_skill_id: 18, user_id: 4)
Endorsement.create(user_skill_id: 18, user_id: 5)
Endorsement.create(user_skill_id: 18, user_id: 6)
Endorsement.create(user_skill_id: 18, user_id: 7)
Endorsement.create(user_skill_id: 19, user_id: 3)
Endorsement.create(user_skill_id: 19, user_id: 4)
Endorsement.create(user_skill_id: 19, user_id: 5)
Endorsement.create(user_skill_id: 19, user_id: 6)
Endorsement.create(user_skill_id: 20, user_id: 3)
Endorsement.create(user_skill_id: 20, user_id: 4)
Endorsement.create(user_skill_id: 20, user_id: 5)
Endorsement.create(user_skill_id: 20, user_id: 6)
Endorsement.create(user_skill_id: 20, user_id: 7)
Endorsement.create(user_skill_id: 21, user_id: 3)
Endorsement.create(user_skill_id: 21, user_id: 4)
Endorsement.create(user_skill_id: 21, user_id: 5)
Endorsement.create(user_skill_id: 21, user_id: 6)
Endorsement.create(user_skill_id: 21, user_id: 7)
Endorsement.create(user_skill_id: 22, user_id: 3)
Endorsement.create(user_skill_id: 22, user_id: 4)
Endorsement.create(user_skill_id: 22, user_id: 5)
Endorsement.create(user_skill_id: 22, user_id: 6)
Endorsement.create(user_skill_id: 23, user_id: 3)
Endorsement.create(user_skill_id: 23, user_id: 4)
Endorsement.create(user_skill_id: 23, user_id: 5)
Endorsement.create(user_skill_id: 24, user_id: 3)
Endorsement.create(user_skill_id: 24, user_id: 4)
Endorsement.create(user_skill_id: 24, user_id: 5)
Endorsement.create(user_skill_id: 24, user_id: 6)
Endorsement.create(user_skill_id: 24, user_id: 7)
Endorsement.create(user_skill_id: 25, user_id: 3)
Endorsement.create(user_skill_id: 25, user_id: 4)
Endorsement.create(user_skill_id: 25, user_id: 5)
Endorsement.create(user_skill_id: 26, user_id: 3)
Endorsement.create(user_skill_id: 26, user_id: 4)
Endorsement.create(user_skill_id: 26, user_id: 5)
Endorsement.create(user_skill_id: 26, user_id: 6)
Endorsement.create(user_skill_id: 27, user_id: 3)
Endorsement.create(user_skill_id: 27, user_id: 4)
Endorsement.create(user_skill_id: 27, user_id: 5)
Endorsement.create(user_skill_id: 27, user_id: 6)
Endorsement.create(user_skill_id: 28, user_id: 3)
Endorsement.create(user_skill_id: 28, user_id: 4)
Endorsement.create(user_skill_id: 29, user_id: 3)
Endorsement.create(user_skill_id: 29, user_id: 4)
Endorsement.create(user_skill_id: 29, user_id: 5)
Endorsement.create(user_skill_id: 30, user_id: 3)
Endorsement.create(user_skill_id: 30, user_id: 4)
