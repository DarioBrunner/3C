class RenameUserToCompanies < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_to_companies, :company_id_id, :company_id
    rename_column :user_to_companies, :user_id_id , :user_id
  end
end
