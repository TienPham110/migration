class AddSharedPhoto < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :share_p, :boolean
  end
end
