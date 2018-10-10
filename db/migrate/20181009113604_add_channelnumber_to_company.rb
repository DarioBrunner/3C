class AddChannelnumberToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :channelnumber, :integer ,default: 10, null:false
  end
end
