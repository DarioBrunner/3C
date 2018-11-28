class AddChannelnumberToCompany < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :channel_number, :integer ,default: 10, null:false
  end
end
