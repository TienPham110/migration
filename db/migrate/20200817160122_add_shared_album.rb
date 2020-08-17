class AddSharedAlbum < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :share_a, :boolean
  end
end
