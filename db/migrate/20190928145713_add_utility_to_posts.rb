class AddUtilityToPosts < ActiveRecord::Migration[6.0]
  def change
  add_column :posts, :utility, :string
  end
end
