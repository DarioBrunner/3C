class RemoveCompanyIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :users, :company_id
  end
end
