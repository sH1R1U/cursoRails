class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.references :usuario, foreign_key: true
      t.references :libro, foreign_key: true

      t.timestamps
    end
  end
end
