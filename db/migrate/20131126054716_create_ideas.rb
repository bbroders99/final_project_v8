class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.date :post_date
      t.string :title
      t.text :description
      t.float :price
      t.string :category
      t.string :size
      t.string :status
      t.integer :rating
      t.integer :buyer_id
      t.integer :artist_id
    end
  end
end
