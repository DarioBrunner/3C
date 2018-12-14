class RemoveForeignKeyFromChannelToGroups < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :channel_to_groups, :groups
  end
end
