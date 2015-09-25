class CreateEstatuses < ActiveRecord::Migration
  def change
    create_table :estatuses do |t|
      t.string :titulo

      t.timestamps null: false
    end
  end
end
