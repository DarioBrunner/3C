class AddUserIdToGroupMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :group_messages, :creator_id, :integer
  end
end
