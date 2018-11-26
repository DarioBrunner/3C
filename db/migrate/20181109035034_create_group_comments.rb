class CreateGroupComments < ActiveRecord::Migration[5.2]
  def change
    create_table :group_comments do |t|
      t.references :group_message, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
