class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :home do |t|

      t.timestamps
    end
  end
end
