class AddStatusToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :status, :string, default: 'draft'
    add_index :courses, :status
  end
end
