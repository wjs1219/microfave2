class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :dob, :date
    add_column :users, :location, :string
    add_column :users, :zip, :string
  end
end
