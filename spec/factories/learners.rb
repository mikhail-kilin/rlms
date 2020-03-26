FactoryBot.define do
  sequence :learner_email do |n|
    "learner_#{n}@example.com"
  end
end

FactoryBot.define do
  factory :learner do
    email { generate :learner_email }
    password { "123456789" }
    password_confirmation { "123456789" }
    first_name { "Firstname" }
    last_name { "Lastname" }
  end
end
