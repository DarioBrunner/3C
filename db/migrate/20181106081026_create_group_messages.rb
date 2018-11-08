class CreateGroupMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :group_messages do |t|
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
