class RemoveEmailFromBuyer < ActiveRecord::Migration
  def change
  		remove_column :buyers, :email, :string
  end
end
