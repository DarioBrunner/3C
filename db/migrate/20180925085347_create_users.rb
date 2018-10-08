class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.string :email
      t.string :password
      t.integer :status

      t.timestamps
    end
  end
end