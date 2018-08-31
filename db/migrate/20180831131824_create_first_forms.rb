class CreateFirstForms < ActiveRecord::Migration[5.2]
  def change
    create_table :first_forms do |t|
      t.string :feld1
      t.text :feld2

      t.timestamps
    end
  end
end
