FactoryBot.define do
  factory :course do
    title { "Курс про Ruby" }
    description { "Длинное понятное описание курса" }
    teacher_id { 1 }
  end
end
