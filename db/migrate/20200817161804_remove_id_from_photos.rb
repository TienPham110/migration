class RemoveIdFromPhotos < ActiveRecord::Migration[6.0]
  def change
    remove_column :photos, :id_p, :string
  end
end
