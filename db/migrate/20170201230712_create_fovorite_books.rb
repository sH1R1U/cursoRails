class CreateFovoriteBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :fovorite_books do |t|
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
