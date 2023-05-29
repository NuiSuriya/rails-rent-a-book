class DropGenres < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :books, :genres
    add_column :books, :genre, :string
    drop_table :genres
    remove_column :books, :genre_id
  end
end
