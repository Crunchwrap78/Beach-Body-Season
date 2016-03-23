class AddUserToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer, references: "User"
  end
end
