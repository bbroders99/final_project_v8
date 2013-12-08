class RenamePortfolioImageUrLtoImage < ActiveRecord::Migration
  def change
  	rename_column :portfolio_images, :url, :image
  end
end
