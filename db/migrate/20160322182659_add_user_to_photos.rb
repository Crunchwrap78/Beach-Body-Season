class AddUserToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :user_id, :integer, references: "User"
  end
end
