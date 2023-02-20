class FixForumsName < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :forums_id, :forum_id
  end
end
