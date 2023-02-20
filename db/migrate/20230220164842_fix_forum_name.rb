class FixForumName < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :forum_id, :forums_id
  end
end
