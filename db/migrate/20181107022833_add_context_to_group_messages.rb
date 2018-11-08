class AddContextToGroupMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :group_messages, :context, :text
  end
end
