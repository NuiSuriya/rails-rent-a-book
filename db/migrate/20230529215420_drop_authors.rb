class DropAuthors < ActiveRecord::Migration[7.0]
  def change
    drop_table :authors
    remove_column :books, :author_id
  end
end
