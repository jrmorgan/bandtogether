# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :instrument_proficiency do
    years_of_experience 1
    instrument nil
    user nil
  end
end
