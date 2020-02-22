require "rails_helper"
require 'devise'



feature "Sign In" do
  scenario "As guest I can not use admin panel" do
    visit admin_root_path

    expect(current_path).to eq new_admin_user_session_path
  end

  scenario "As Learner I can not use admin panel" do
    
    learner = Learner.create(email: 'learner@example.com', first_name: 'Firstname', last_name: 'Lastname', password: 'password')
    sign_in learner

    visit admin_root_path

    expect(current_path).to eq new_admin_user_session_path
  end

  scenario "As Teacher I can not use admin panel" do
    
    teacher = Teacher.create(email: 'teacher@example.com', first_name: 'Firstname', last_name: 'Lastname', password: 'password')
    sign_in teacher

    visit admin_root_path

    expect(current_path).to eq new_admin_user_session_path
  end

  scenario "As Admin I can use admin panel" do
    
    admin = AdminUser.create(email: 'admin@example.com', password: 'password')
    sign_in admin

    visit admin_root_path

    expect(current_path).to eq admin_root_path
  end
end
