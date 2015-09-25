class AddIdiomaToAgrupadore < ActiveRecord::Migration
  def change
    add_reference :agrupadores, :idioma_id, index: true, foreign_key: true
  end
end
