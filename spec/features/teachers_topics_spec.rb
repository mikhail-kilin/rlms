require "rails_helper"

feature "Manage Topics" do
  let!(:teacher) { FactoryBot.create :teacher }
  let!(:course) { FactoryBot.create :course, teacher: teacher }

  before do
    sign_in teacher
  end

  it "adds new topics to course" do
    visit teachers_course_path(course)

    fill_in :topic_title, with: "Title of the Topic"
    fill_in :topic_description, with: "Description of the Topic"

    click_on "Add topic"

    expect(page).to have_content("Title of the Topic")
    expect(page).to have_content("Open topic")
  end
end
