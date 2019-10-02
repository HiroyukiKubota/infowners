class RemoveImage1FromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :image1, :string
  end
end
