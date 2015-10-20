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
