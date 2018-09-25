class CreateBusers < ActiveRecord::Migration[5.2]
  def change
    create_table :busers do |t|
      t.string :firstname
      t.string :lastname
      t.string :passwort
      t.integer :status

      t.timestamps
    end
  end
end
