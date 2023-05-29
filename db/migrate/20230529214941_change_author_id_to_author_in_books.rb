class ChangeAuthorIdToAuthorInBooks < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :books, :authors
    add_column :books, :author, :string
  end
end
