class ChangeCourseToBeIntegerInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :course, :integer
  end
end
