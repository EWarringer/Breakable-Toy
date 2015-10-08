require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "johnsmith#{n}@example.com" }
    sequence(:first_name) {|n| "John#{n}" }
    sequence(:last_name) {|n| "Smith#{n}" }
    sequence(:username) {|n| "Username#{n}" }
    password 'password'
    password_confirmation 'password'
  end

  factory :category do
    sequence(:name) {|n| "category#{n}" }
  end

  factory :skill do
    sequence(:name) {|n| "skill#{n}" }
    category
  end

  factory :user_skill do
    user
    skill
  end
end
