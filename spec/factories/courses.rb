FactoryBot.define do
  factory :course do
    title { "Курс про Ruby" }
    description { "Длинное понятное описание курса" }
    course_slug { "course_slug" }
    teacher
  end
end
