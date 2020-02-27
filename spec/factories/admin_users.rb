FactoryBot.define do
  sequence :admin_email do |n|
    "admin_#{n}@example.com"
  end
end
  
FactoryBot.define do
  factory :admin_user do
    email { generate :admin_email }
    password { "123456789" }
    password_confirmation { "123456789" }
  end
end