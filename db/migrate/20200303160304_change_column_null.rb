class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
  	change_column_null(:learners, :first_name, false)
  	change_column_null(:learners, :last_name, false)
  end
end
