class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :url, :string
    add_column :users, :username, :string
    add_column :users, :fname, :string
    add_column :users, :lname, :string
  end
end
