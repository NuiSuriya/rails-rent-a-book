class ChangeAuthorInBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :author
    add_column :books, :author, :string
  end
end
