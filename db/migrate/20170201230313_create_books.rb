class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :author
      t.string :gender
      t.string :title
      t.integer :year
      t.integer :punctuation

      t.timestamps
    end
  end
end
