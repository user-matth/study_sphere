class ChangeUserImageToBeBinaryInForms < ActiveRecord::Migration[7.0]
  def change
    change_column :forums, :user_image, :binary
  end
end
