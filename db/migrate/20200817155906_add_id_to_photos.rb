class AddIdToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :id_p, :string
  end
end
