class CreateGroupUserMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :group_user_messages do |t|
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :last_message_id

      t.timestamps
    end
  end
end
