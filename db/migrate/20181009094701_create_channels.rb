class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.integer :typ, default: 0
      t.string :url
      t.string :title
      t.string :login

      t.timestamps
    end
  end
end
