class AddUserToMeetings < ActiveRecord::Migration
  def change
    add_column :meetings, :user_id, :integer, references: "User"
  end
end
