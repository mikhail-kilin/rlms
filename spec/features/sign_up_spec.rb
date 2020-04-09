require "rails_helper"

feature "Sign Up" do
  scenario "As User I can register new account with valid info" do
    visit root_path

    click_on "Вход для Преподавателей"
    click_on "Создать новый аккаунт"

    fill_in :teacher_first_name, with: "Vladimir"
    fill_in :teacher_last_name, with: "Bazhanov"
    fill_in :teacher_email, with: "user@example.com"
    fill_in :teacher_password, with: "123123123"
    fill_in :teacher_password_confirmation, with: "123123123"
    fill_in :teacher_info, with: Faker::Lorem.paragraph

    click_on "Регистрация"
    expect(page).to have_content("Welcome, Vladimir Bazhanov!")
  end

  scenario "As User I can not register new account with invalid info" do
    visit root_path

    click_on "Вход для Преподавателей"
    click_on "Создать новый аккаунт"

    fill_in :teacher_first_name, with: "Vladimir"
    fill_in :teacher_last_name, with: "Bazhanov"
    fill_in :teacher_email, with: ""
    fill_in :teacher_password, with: "123123123"
    fill_in :teacher_password_confirmation, with: "123123123"
    fill_in :teacher_info, with: Faker::Lorem.paragraph

    click_on "Регистрация"

    expect(page).not_to have_content("Welcome, Vladimir Bazhanov!")
  end
end
