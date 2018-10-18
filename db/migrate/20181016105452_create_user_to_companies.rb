class CreateUserToCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_to_companies do |t|
      t.boolean :admin, default: false
      t.references :user_id, foreign_key: true
      t.references :company_id, foreign_key: true

      t.timestamps
    end
  end
end
