class AddCreatorIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :creator_id, :integer
  end
end
