class ChangeUserNameToBeStringInComments < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :user_name, :string
  end
end
