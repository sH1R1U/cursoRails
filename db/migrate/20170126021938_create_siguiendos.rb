class CreateSiguiendos < ActiveRecord::Migration[5.0]
  def change
    create_table :siguiendos do |t|
      t.refenrences :usuario
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
