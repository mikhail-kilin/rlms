FactoryBot.define do
  sequence :teacher_email do |n|
    "teacher_#{n}@example.com"
  end
end

FactoryBot.define do
  factory :teacher do
    email { generate :teacher_email }
    password { "123456789" }
    password_confirmation { "123456789" }
    first_name { "Firstname" }
    last_name { "Lastname" }
    info { Faker::Lorem.paragraph }
    locale { "en" }
  end
end
