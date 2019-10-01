class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :city
      t.string :suburb
      t.string :roomtype
      t.integer :rent
      t.string :gender
      t.string :okimiyage
      t.string :minimum_stay
      t.date :move_in_date
      t.integer :sharemate_male
      t.integer :sharemate_female
      t.string :smoking
      t.string :couple
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
