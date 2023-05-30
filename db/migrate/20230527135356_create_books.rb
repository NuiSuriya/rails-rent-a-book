class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :genre
      t.string :language
      t.float :price_per_day, default: 0.0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
