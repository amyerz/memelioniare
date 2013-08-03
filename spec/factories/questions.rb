# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    content "MyText"
    type ""
    correct_choice_id 1
  end
end
