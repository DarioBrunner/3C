class RemoveForeignKeyFromGroupUserMessages < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :group_user_messages, :groups
  end
end
