class RemoveForeignKeyFromUserToGroups < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :user_to_groups, :groups
  end
end
