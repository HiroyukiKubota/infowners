class AddBondToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column:posts, :bond, :integer
  end
end
