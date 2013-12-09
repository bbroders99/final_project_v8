class Idea < ActiveRecord::Base

	belongs_to :buyer
	belongs_to :artist

	has_many :idea_images
	has_many :bids

	validates :buyer_id, :presence => true
	
	def artist
		return Artist.find(artist_id)
	end

	def buyer
		return Buyer.find(buyer_id)
	end


end
