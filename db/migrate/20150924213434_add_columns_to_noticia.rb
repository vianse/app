class AddColumnsToNoticia < ActiveRecord::Migration
  def change
    add_reference :noticia, :idioma_id, index: true, foreign_key: true
  end
end
