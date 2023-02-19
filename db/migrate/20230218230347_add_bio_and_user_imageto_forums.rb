class AddBioAndUserImagetoForums < ActiveRecord::Migration[7.0]
  def change
    add_column :forums, :bio, :string
    add_column :forums, :user_image, :string
    add_column :forums, :user_id, :string
  end
end
