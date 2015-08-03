class RemoveImageableFromPicture < ActiveRecord::Migration
  def change
    remove_reference :pictures, :imageable, index: true, foreign_key: true
  end
end
