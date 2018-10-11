class CreateChannelToGoups < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_to_groups do |t|
      t.references :channel, foreign_key: true
      t.references :group, foreign_key: true
      t.boolean :blogging, default: false
      t.boolean :writing, default: false

      t.timestamps
    end
  end
end
