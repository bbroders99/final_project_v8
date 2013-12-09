class ChangeArtistNameToDefault < ActiveRecord::Migration
  def change
  	change_column :artists, :first_name, :string, :default => "Anonymous"
  	change_column :artists, :last_name, :string, :default => "User"
  end
end
