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

end
