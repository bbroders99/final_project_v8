class Bid < ActiveRecord::Base

		belongs_to :idea
		belongs_to :artist


	def artist
		return Artist.find(artist_id)
	end


	def idea
		return Idea.find(idea_id)
	end
end
