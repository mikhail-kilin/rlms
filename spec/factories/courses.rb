FactoryBot.define do
  factory :course do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
    course_slug { Faker::Lorem.sentence.parameterize }
    teacher
  end
end
