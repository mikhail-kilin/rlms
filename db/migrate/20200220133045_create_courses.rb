class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :teacher_id

      t.timestamps
    end

    add_index :courses, :teacher_id
  end
end
