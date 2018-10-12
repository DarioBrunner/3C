class CreateUserToChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :user_to_channels do |t|
      t.references :user, foreign_key: true
      t.references :channel, foreign_key: true
      t.boolean :blogging
      t.boolean :writting

      t.timestamps
    end
  end
end
