class AddStatusToChannels < ActiveRecord::Migration[5.2]
  def change
    add_column :channels, :status, :integer
  end
end
