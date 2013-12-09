class Idea < ActiveRecord::Base

	belongs_to :buyer
	belongs_to :artist

	has_many :idea_images, :dependent => :destroy
	has_many :bids

	validates :buyer_id, :presence => true
	validates :post_date, :presence => true
	validates :title, :presence => true
	validates :description, :presence => true
	validates :price, :presence => true
	validates :category, :presence => true
	validates :size, :presence => true

	
	def artist
		return Artist.find(artist_id)
	end

	def buyer
		return Buyer.find(buyer_id)
	end



end
