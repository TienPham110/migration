class AddIdToAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :id_a, :string
  end
end
