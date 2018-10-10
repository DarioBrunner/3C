class CreateDataprotections < ActiveRecord::Migration[5.2]
  def change
    create_table :dataprotections do |t|
      t.text :content

      t.timestamps
    end
  end
end
