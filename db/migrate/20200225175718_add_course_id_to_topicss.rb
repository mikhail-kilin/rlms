class AddCourseIdToTopicss < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :course_id, :integer
  end
end
