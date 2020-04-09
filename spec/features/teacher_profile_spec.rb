require "rails_helper"

feature "Teacher Profile" do
  let!(:teacher) { FactoryBot.create :teacher }
  let!(:courses) { FactoryBot.create_list :course, 5, teacher: teacher }

  it "visitor can see teacher profiler" do
    visit teacher_profile_path teacher

    expect(page).to have_content teacher.info
    courses.each do |course|
      expect(page).to have_content course.title
    end
  end
end
