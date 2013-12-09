class ChangeBuyerNameToDefault < ActiveRecord::Migration
  def change
  	change_column :buyers, :first_name, :string, :default => "Anonymous"
  	change_column :buyers, :last_name, :string, :default => "Buyer"

  	change_column :artists, :last_name, :string, :default => "Artist"
  
  end
end
