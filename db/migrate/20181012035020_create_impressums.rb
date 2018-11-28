class CreateImpressums < ActiveRecord::Migration[5.2]
  def change
    create_table :impressums do |t|
      t.text :content

      t.timestamps
    end
  end
end
