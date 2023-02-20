class AddForumIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :forum_id, :integer
  end
end
