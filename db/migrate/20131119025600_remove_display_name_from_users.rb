class RemoveDisplayNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :displayname, :string
  end
end
