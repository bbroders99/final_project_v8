class RemoveEmailFromArtist < ActiveRecord::Migration
  def change
  	 remove_column :artists, :email, :string
  end
end
