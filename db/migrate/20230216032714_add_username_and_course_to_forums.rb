class AddUsernameAndCourseToForums < ActiveRecord::Migration[7.0]
  def change
    add_column :forums, :username, :string
    add_column :forums, :course, :string
  end
end
