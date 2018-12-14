class RemoveForeignKeyFromGroupComments < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :group_comments, :groups
  end
end
