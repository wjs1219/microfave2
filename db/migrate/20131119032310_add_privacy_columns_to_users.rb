class AddPrivacyColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :usernamepriv, :boolean
    add_column :users, :namepriv, :boolean
    add_column :users, :zippriv, :boolean
    add_column :users, :locationpriv, :boolean
    add_column :users, :dobpriv, :boolean
    add_column :users, :feedpriv, :boolean
  end
end
