class AddUserToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer, references: "User"
  end
end
