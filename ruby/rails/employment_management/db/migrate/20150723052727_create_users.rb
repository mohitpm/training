class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :age

      t.timestamps null: false
    end
  end
end
