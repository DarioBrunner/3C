class RemoveForeignKeyFromGroupMessages < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :group_messages, :groups
  end
end
