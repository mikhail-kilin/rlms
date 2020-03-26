class AddSlugToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :course_slug, :string
    add_index :courses, :course_slug, unique: true
  end
end
