class AddIdiomaToCategoria < ActiveRecord::Migration
  def change
    add_reference :categoria, :idioma_id, index: true, foreign_key: true
  end
end
