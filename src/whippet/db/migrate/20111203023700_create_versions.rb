class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :edition
      t.string :isbn
      t.references :book

      t.timestamps
    end
    add_index :versions, :book_id
  end
end
