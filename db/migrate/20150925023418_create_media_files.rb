class CreateMediaFiles < ActiveRecord::Migration
  def change
    create_table :media_files do |t|
        t.string  :name
        t.references :reference, polymorphic: true
        t.attachment :file
        t.timestamps
    end
  end
end
