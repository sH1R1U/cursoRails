class CreateLibroFavoritos < ActiveRecord::Migration[5.0]
  def change
    create_table :libro_favoritos do |t|
      t.references :usuario, foreign_key: true
      t.references :libro, foreign_key: true

      t.timestamps
    end
  end
end
