class FixIdeaImageUrLtoImage < ActiveRecord::Migration
  def change
  	  	rename_column :idea_images, :url, :image
  end
end
