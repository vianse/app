class CreateAgrupadores < ActiveRecord::Migration
  def change
    create_table :agrupadores do |t|
      t.string :titulo

      t.timestamps null: false
    end
  end
end
