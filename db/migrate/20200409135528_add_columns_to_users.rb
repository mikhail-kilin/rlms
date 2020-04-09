class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :info, :text
    add_column :learners, :info, :text
  end
end
