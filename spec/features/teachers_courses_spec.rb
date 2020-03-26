require "rails_helper"

feature "Manage Courses" do
  let!(:teacher) { FactoryBot.create :teacher }
  let!(:course) { FactoryBot.create :course, teacher: teacher }

  before do
    sign_in teacher
  end

  it "creates new course successfully" do
    visit teacher_root_path

    click_on "Create course"

    fill_in :course_title, with: "Test Course Title"
    fill_in :course_course_slug, with: "test-slug"
    fill_in :course_description, with: "Description Text"

    click_on "Create Course"

    expect(page).to have_content("Мои курсы")
    expect(page).to have_content("Test Course Title")
  end

  it "deletes course" do
    visit teachers_courses_path

    expect(page).to have_content(course.title)

    click_on "Удалить"

    expect(Course.count).to eq(0)
  end

  it "opens course page" do
    visit teachers_courses_path

    click_on "Open course"

    expect(page).to have_content(course.title)
    expect(page).to have_content("Topics")
  end
end
