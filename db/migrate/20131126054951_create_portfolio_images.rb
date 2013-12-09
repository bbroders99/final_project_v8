class CreatePortfolioImages < ActiveRecord::Migration
  def change
    create_table :portfolio_images do |t|
      t.string :url
      t.integer :artist_id
    end
  end
end
