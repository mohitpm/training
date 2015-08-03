class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :path
      t.references :imageable, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
