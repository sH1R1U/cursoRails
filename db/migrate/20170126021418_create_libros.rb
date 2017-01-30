class CreateLibros < ActiveRecord::Migration[5.0]
  def change
    create_table :libros do |t|
      t.string :autor
      t.string :genero
      t.string :titulo
      t.integer :ano
      t.integer :puntuacion

      t.timestamps
    end
  end
end
