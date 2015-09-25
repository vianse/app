class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.text :descripcion
      t.references :estatus, index: true, foreign_key: true
      t.date :fecha
      t.references :categoria, index: true, foreign_key: true
      t.string :relevancia
      t.string :link
      t.references :agrupador, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
