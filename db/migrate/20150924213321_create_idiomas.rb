class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.string :titulo

      t.timestamps null: false
    end
  end
end
