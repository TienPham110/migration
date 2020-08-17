class AddIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :id_u, :string
  end
end
