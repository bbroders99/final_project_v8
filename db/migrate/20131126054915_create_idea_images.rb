class CreateIdeaImages < ActiveRecord::Migration
  def change
    create_table :idea_images do |t|
      t.string :url
      t.integer :idea_id
    end
  end
end
