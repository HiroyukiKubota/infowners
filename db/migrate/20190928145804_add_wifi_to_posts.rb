class AddWifiToPosts < ActiveRecord::Migration[6.0]
  def change
  add_column :posts, :wifi, :string
  end
end
