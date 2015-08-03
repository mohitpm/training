class AddImageableToPicture < ActiveRecord::Migration
  def change
    add_reference :pictures, :imageable, polymorphic: true, index: true
  end
end
