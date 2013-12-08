class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :idea_id
      t.integer :artist_id
    end
  end
end
