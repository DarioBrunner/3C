class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :password

      t.timestamps
    end
  end
end
