class Artist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :ideas
	has_many :portfolio_images, :dependent => :destroy
	has_many :bids

	#validates :first_name, :presence => true
	#validates :last_name, :presence => true
	#validates :bio, :presence => true

	def full_name
    	return first_name + " " + last_name
	end

	def portfolio_images
		return PortfolioImage.where(artist_id)
	end

	
end
