class RemoveIdFromAlbums < ActiveRecord::Migration[6.0]
  def change
    remove_column :albums, :id_a, :string
  end
end
