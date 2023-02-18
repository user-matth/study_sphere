class ChangeTagsToBeIntegerInForums < ActiveRecord::Migration[7.0]
  def change
    change_column :forums, :tags, :integer
  end
end
