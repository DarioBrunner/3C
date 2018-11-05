class CreateCopyrigths < ActiveRecord::Migration[5.2]
  def change
    create_table :copyrigths do |t|
      t.string :copy

      t.timestamps
    end
  end
end
