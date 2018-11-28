class AddContextToGroupMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :group_messages, :content, :text
  end
end
