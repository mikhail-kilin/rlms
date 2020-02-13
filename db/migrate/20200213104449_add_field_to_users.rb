class AddFieldToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :locale, :string, default: "ru"

    add_column :learners, :first_name, :string
    add_column :learners, :last_name, :string
    add_column :learners, :locale, :string, default: "ru"
  end
end
