class AddImage1ToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :image1, :string
  end
end
